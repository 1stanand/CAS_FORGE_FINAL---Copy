@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@AppInfoAdoption
  #${ApplicantType:["indiv"]}
Feature:Employment Details for Agriculture Occupation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#  CAS-110829
#  Below configuration should be configured in the system for Reconsideration stage
#1) Authority added for update details checkbox is 'UPDATE_DETAILS_CHECKBOX_AUTH'.
#2) Two new configuration columns are added in entity 'CAS_PROD_TYPE_CONFIG' namely 'IS_NEW_CUST_ALLOWED_RECON' and 'IS_EXIST_CUST_ALLOWED_RECON'.

  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12890: Required <Field> field validation for Agriculture occupation in Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Occupation Type as "Agriculture" in employment details
    When user click on Required to check required fields of occupation type
    Then "<Field>" field should be present for Agriculture occupation in Employment Details as required field
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field               | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | Add Occupation Type | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field               | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field               | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field               | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12891: <Field> field validation in All Fields for Agriculture occupation in Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Occupation Type as "Agriculture" in employment details
    When user click on All Fields to check all fields of occupation
    Then "<Field>" field should be present for Agriculture occupation in Employment Details
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field                | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Occupation Code      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Profession           | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Description          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Type Of Farmer       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Occupation | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Location             | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Season               | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Occupation  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Remarks              | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer Address     | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Code      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Profession           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Description          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type Of Farmer       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Occupation | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Location             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Season               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Occupation  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field                | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Code      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Profession           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Description          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type Of Farmer       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Occupation | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Location             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Season               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Occupation  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field                | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Code      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Profession           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Description          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type Of Farmer       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Occupation | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Location             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Season               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Occupation  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  @Sanity
  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12892: <Save_Next> Employment Details for Agriculture occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Occupation Type as "Agriculture" in employment details
    When user clicks on "<Save_Next>" button in employment details
    Then Employment Details should be saved successfully
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     |


  @Sanity
  #FeatureID:ACAUTOCAS-158
    @FixedExp
  Scenario Outline: ACAUTOCAS-12894: Save Employment Details for Agriculture occupation in expanded mode at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Expanded Mode in applicant information
    And user opens employment detail accordion in expanded mode
    And user selects Occupation Type as "Agriculture" in employment details
    When user clicks on "Save" button in employment details
    Then Employment Details should be saved successfully
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |


    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PL","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  @Sanity
  #FeatureID:ACAUTOCAS-158
    @FixedExp
  Scenario Outline: ACAUTOCAS-12894: Save Employment Details for Agriculture occupation in expanded mode at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Occupation Type as "Agriculture" in employment details
    When user clicks on "Save" button in employment details
    Then Employment Details should be saved successfully
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |


    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PL","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12895: Field type validation of <Field> field in Employment Details for Agriculture occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    When user selects Occupation Type as "Agriculture" in employment details
    Then field type of "<Field>" field should "<Field_Type>" field in Employment Details for occupation type
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field                | Field_Type | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | Add Occupation Type  | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Occupation Code      | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Profession           | auto complete | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Description          | textarea      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Type Of Farmer       | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Occupation | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Location             | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Season               | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Occupation  | input         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name    | input         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Remarks              | textarea      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer Address     | checkbox   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                | Field_Type | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type  | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Code      | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Profession           | auto complete | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Description          | textarea      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type Of Farmer       | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Occupation | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Location             | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Season               | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Occupation  | input         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | input         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks              | textarea      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address     | checkbox   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field                | Field_Type | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type  | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Code      | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Profession           | auto complete | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Description          | textarea      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type Of Farmer       | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Occupation | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Location             | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Season               | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Occupation  | input         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | input         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks              | textarea      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address     | checkbox   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field                | Field_Type | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type  | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Code      | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Profession           | auto complete | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Description          | textarea      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type Of Farmer       | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Occupation | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Location             | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Season               | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Occupation  | input         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | input         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks              | textarea      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address     | checkbox   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12896: Warning pop up validation while cancelling the Employment Details filling process for Agriculture occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 74
    And user fills employment details with "all" fields for Agriculture
    When user clicks on Cancel button in employment details
    Then warning pop up should be populated with a message in employment details
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |


    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PL","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12897: Cancel the Employment Details filling process for Agriculture occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 74
    And user fills employment details with "all" fields for Agriculture
    When user clicks on Cancel button in employment details
    And user clicks on "<Button>" of warning pop up
    Then filled data should be "<Clear_Remains>" in employment details
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | Button | Clear_Remains  | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | Close  | remains intact | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | <ProductType> | Ok     | Clear          | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Button | Clear_Remains  | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | Close  | remains intact | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Ok     | Clear          | <ApplicantType> |          |     |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Button | Clear_Remains  | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | Close  | remains intact | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Ok     | Clear          | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Button | Clear_Remains  | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | Close  | remains intact | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Ok     | Clear          | <ApplicantType> |          |     |


  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12898: Close the warning pop up with help of <Button_Icon> in Employment Details for Agriculture occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 74
    And user fills employment details with "all" fields for Agriculture
    When user clicks on Cancel button in employment details
    And user close the warning pop up with help of "<Button_Icon>" in Employment Details
    Then warning pop up should be closed in employment details
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Button_Icon  | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | close icon   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | close button | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Button_Icon  | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | close icon   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | close button | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Button_Icon  | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | close icon   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | close button | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Button_Icon  | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | close icon   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | close button | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12899: Minimize the warning pop up in Employment Details for Agriculture occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 74
    And user fills employment details with "all" fields for Agriculture
    When user clicks on Cancel button in employment details
    And user minimize the warning pop up in Employment Details
    Then warning pop up should be minimized in employment details
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |


    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PL","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12900: Maximize the minimized warning pop up in Employment Details for Agriculture occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 74
    And user fills employment details with "all" fields for Agriculture
    When user clicks on Cancel button in employment details
    And user maximize the minimized warning pop up in Employment Details
    Then warning pop up should be maximized in employment details
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |


    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PL","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12901: Validate Employment Details grid <Columns> column in Employment Details for Agriculture occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    When user selects Occupation Type as "Agriculture" in employment details
    Then Employment Details should be display with "<Columns>" Employment Details grid
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Columns                   | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | ID                        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Major Employer?           | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Occupation Type           | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer/Organization     | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industries                | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Is this Major Occupation? | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Actions                   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Columns                   | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | ID                        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Major Employer?           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Type           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer/Organization     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industries                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Is this Major Occupation? | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Actions                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Columns                   | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | ID                        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Major Employer?           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Type           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer/Organization     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industries                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Is this Major Occupation? | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Actions                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Columns                   | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | ID                        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Major Employer?           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Type           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer/Organization     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industries                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Is this Major Occupation? | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Actions                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12902: Validate Employment Details grid <Columns> column data in Employment Details for Agriculture occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    When user fills employment details with all fields for Agriculture
    And saves the employment details
    Then Employment Details grid should be displayed with filled "<Columns>"
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Columns               | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 74                            |
      | Employer/Organization | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 74                            |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Columns               | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |
      | Employer/Organization | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Columns               | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |
      | Employer/Organization | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Columns               | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |
      | Employer/Organization | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |


  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12903: Occupation Id generation on adding occupation details in Employment Details grid for Agriculture occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    When user fills employment details with all fields for Agriculture
    And saves the employment details
    Then Occupation Id should get generated in employment details
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 74                            |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |


  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12904: Conformation pop up validation while changing the Major Occupation in Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row 69
    And user fill employment details with Occupation Type as "Others"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with "all" fields for Agriculture
    And saves the employment details
    When changes major occupation
    Then confirmation message pops up
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 74                            |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |


  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12905: Change the Major Occupation in Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row 69
    And user fill employment details with Occupation Type as "Others"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with "all" fields for Agriculture
    And saves the employment details
    When change major occupation and confirm
    Then Major Occupation changes
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 74                            |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |

  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12906: <Close_Cancel> the conformation pop up in Employment Details for Agriculture occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with all fields for Agriculture
    And saves the employment details
    And changes major occupation
    When user close the Confirmation pop up of major occupation change with help of "<Close_Cancel>" in Employment Details
    Then confirmation pop up should be closed
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Close_Cancel | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Close        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 74                            |
      | Cancel       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 74                            |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Close_Cancel | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Close        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |
      | Cancel       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Close_Cancel | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Close        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |
      | Cancel       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Close_Cancel | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Close        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |
      | Cancel       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |


  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12907: Minimize the conformation pop up in Employment Details for Agriculture occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row 69
    And user fill employment details with Occupation Type as "Others"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with "all" fields for Agriculture
    And saves the employment details
    And changes major occupation
    When user minimize the confirmation pop up of major occupation change in Employment Details
    Then confirmation pop up should be minimized
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 74                            |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |


  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12908: Maximize the minimized conformation pop up in Employment Details for Agriculture occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row 69
    And user fill employment details with Occupation Type as "Others"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with "all" fields for Agriculture
    And saves the employment details
    And changes major occupation
    When user maximize the minimized confirmation pop up in Employment Details
    Then confirmation pop up should be maximized
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 74                            |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |


  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12909: Required <Field> field validation for Agriculture occupation in Expanded Mode of Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Expanded Mode in applicant information
    And user opens employment detail accordion in expanded mode
    And user selects Occupation Type as "Agriculture" in employment details
    When user click on Required to check required fields of occupation type
    Then "<Field>" field should be present for Agriculture occupation in Employment Details as required field
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field               | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | Add Occupation Type | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field               | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field               | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field               | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12910: <Field> field validation in All Fields for Agriculture occupation in Expanded Mode of Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Expanded Mode in applicant information
    And user opens employment detail accordion in expanded mode
    And user selects Occupation Type as "Agriculture" in employment details
    When user click on All Fields to check all fields of occupation
    Then "<Field>" field should be present for Agriculture occupation in Employment Details
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field                | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Occupation Code      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Profession           | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Description          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Type Of Farmer       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Occupation | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Location             | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Season               | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Occupation  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Remarks              | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer Address     | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Code      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Profession           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Description          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type Of Farmer       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Occupation | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Location             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Season               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Occupation  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field                | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Code      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Profession           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Description          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type Of Farmer       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Occupation | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Location             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Season               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Occupation  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field                | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Code      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Profession           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Description          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type Of Farmer       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Occupation | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Location             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Season               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Occupation  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  #FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12911: Field type validation of <Field> field in Expanded Mode of Employment Details for Agriculture occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Expanded Mode in applicant information
    And user opens employment detail accordion in expanded mode
    When user selects Occupation Type as "Agriculture" in employment details
    Then field type of "<Field>" field should "<Field_Type>" field in Employment Details for occupation type
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field                | Field_Type | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | Add Occupation Type  | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Occupation Code      | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Profession           | auto complete | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Description          | textarea      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Type Of Farmer       | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Occupation | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Location             | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Season               | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Occupation  | input         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name    | input         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Remarks              | textarea      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer Address     | checkbox      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                | Field_Type | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type  | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Code      | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Profession           | auto complete | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Description          | textarea      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type Of Farmer       | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Occupation | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Location             | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Season               | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Occupation  | input         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | input         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks              | textarea      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address     | checkbox      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field                | Field_Type | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type  | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Code      | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Profession           | auto complete | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Description          | textarea      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type Of Farmer       | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Occupation | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Location             | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Season               | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Occupation  | input         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | input         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks              | textarea      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address     | checkbox      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field                | Field_Type | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type  | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Code      | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Profession           | auto complete | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Description          | textarea      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type Of Farmer       | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Occupation | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Location             | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Season               | dropdown      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Occupation  | input         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | input         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks              | textarea      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address     | checkbox      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


#  Bug:CAS-143435
#  CAS-143435
  Scenario Outline: ACAUTOCAS-14294: <FieldName> validation in Agriculture occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 74
    And user fills employment details with all fields for Agriculture
    And saves the employment details
    And clicks on edit button in Agriculture occupation
    And user clicks on save employment details
    When user refresh the Employment Details Screen
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user open the occupation details for "Agriculture"
    Then "<FieldName>" field should be intact
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | FieldName            | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Occupation Code      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Profession           | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Description          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Type Of Farmer       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Occupation | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Location             | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Season               | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Occupation  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Remarks              | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | FieldName            | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Code      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Profession           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Description          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type Of Farmer       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Occupation | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Location             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Season               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Occupation  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Conventional
    @Release @Part-1
    @ImplementedBy-rishabh.sachan
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | FieldName            | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Code      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Profession           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Description          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type Of Farmer       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Occupation | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Location             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Season               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Occupation  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | FieldName            | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Code      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Profession           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Description          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type Of Farmer       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Occupation | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Location             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Season               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Occupation  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

