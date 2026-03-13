@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
@Perishable

# ${ ApplicantType : ["indiv"]}
#FeatureID-ACAUTOCAS-154,ACAUTOCAS-5975
Feature:Negative checklist match re-initiate

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @FixedExp
  Scenario Outline:ACAUTOCAS-4912:Validate Negative checklist match re-initiate for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigate to personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInformationWB>" under sheet "<PersonalInformation_identification>" and row <PersonalInformation_identification_rowNum>
    And user fill all identification details
    When user clicks on checks for duplicates
    And user re-initiate "<Parameter>" duplicates
    Then negative checklist match re-initiated
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Release @Part-1
    @Conventional
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter          | PersonalInformationWB     | PersonalInformation_identification | PersonalInformation_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Negative Checklist | personal_information.xlsx | identification                     | 116                                       |

# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter          | PersonalInformationWB     | PersonalInformation_identification | PersonalInformation_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Negative Checklist | personal_information.xlsx | identification                     | 160                                       |

# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Parameter          | PersonalInformationWB     | PersonalInformation_identification | PersonalInformation_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Negative Checklist | personal_information.xlsx | identification                     | 160                                       |

 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter          | PersonalInformationWB     | PersonalInformation_identification | PersonalInformation_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Negative Checklist | personal_information.xlsx | identification                     | 116                                       |


  @24TrialRunAppInfo
    @Sanity
  Scenario Outline:ACAUTOCAS-4913: Validate Matched Records in negative checklist for <ProductType> product at <ApplicationStage> application stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigate to personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInformationWB>" under sheet "<PersonalInformation_identification>" and row <PersonalInformation_identification_rowNum>
    And user fill all identification details
    When user clicks on checks for duplicates
    And user re-initiate "<Parameter>"
    And user open the negative checklist duplicates found to validate Dedupe Match Screen
    And user open negative checklist type for matched duplicate
    Then filled applicant data should be matched with negative checklist data uploaded in the system

    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    @Conventional @Release @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter          | PersonalInformationWB     | PersonalInformation_identification | PersonalInformation_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Negative Checklist | personal_information.xlsx | identification                     | 116                                       |

    # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
    @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter          | PersonalInformationWB     | PersonalInformation_identification | PersonalInformation_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Negative Checklist | personal_information.xlsx | identification                     | 160                                       |

    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${ Category : ["bonds"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
    @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Parameter          | PersonalInformationWB     | PersonalInformation_identification | PersonalInformation_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Negative Checklist | personal_information.xlsx | identification                     | 160                                       |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter          | PersonalInformationWB     | PersonalInformation_identification | PersonalInformation_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Negative Checklist | personal_information.xlsx | identification                     | 116                                       |

  @24TrialRunAppInfo
  Scenario Outline: ACAUTOCAS-5038: Negative checklist match after check for duplicate for <ProductType> product at <ApplicationStage> application stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigate to personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInformationWB>" under sheet "<PersonalInformation_identification>" and row <PersonalInformation_identification_rowNum>
    And user fill all identification details
    When user clicks on checks for duplicates
#  In this dedupe is run on the negative checklist data uploaded in the system.
    Then The result shall be displayed by the system as per the customers found in Negative checklist

    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    @Conventional @Release @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | PersonalInformationWB     | PersonalInformation_identification | PersonalInformation_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification                     | 116                                       |

    # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
    @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | PersonalInformationWB     | PersonalInformation_identification | PersonalInformation_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification                     | 160                                       |

    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${ Category : ["bonds"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
    @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | PersonalInformationWB     | PersonalInformation_identification | PersonalInformation_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification                     | 160                                       |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | PersonalInformationWB     | PersonalInformation_identification | PersonalInformation_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification                     | 116                                       |
