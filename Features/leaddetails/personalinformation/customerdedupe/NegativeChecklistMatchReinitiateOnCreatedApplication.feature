@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-
@TechReviewedBy-
@ReviewedByDEV
@AppInfoAdoption
@Perishable

@24TrialRunAppInfo
# ${ ApplicantType : ["indiv"]}
#FeatureID-ACAUTOCAS-154,ACAUTOCAS-5975
Feature:Negative checklist match re-initiate on created application


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-4940:Validate Negative checklist match re-initiate at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigate to personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInformationWB>" under sheet "<PersonalInformation_identification>" and row <PersonalInformation_identification_rowNum>
    And user fill all identification details
    When user clicks on checks for duplicates
    And user re-initiate "<Parameter>" duplicates
    Then negative checklist match re-initiated

    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-ayush.garg
    @Conventional
    @Release @Part-1
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


    @Sanity
  Scenario Outline:ACAUTOCAS-5037: Negative checklist match after check for duplicates at <ApplicationStage> stage for <ProductType> on created application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigate to personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInformationWB>" under sheet "<PersonalInformation_identification>" and row <PersonalInformation_identification_rowNum>
    And user fill all identification details
    When user clicks on checks for duplicates
    Then The result shall be displayed by the system as per the customers found in Negative checklist

    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-ayush.garg
    @Conventional
    @Release @Part-1
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
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | PersonalInformationWB     | PersonalInformation_identification | PersonalInformation_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification                     | 116                                       |


  Scenario Outline: ACAUTOCAS-4941: Validate Matched Records in negative checklist at <ApplicationStage> for <ProductType>
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
    @Release @Part-1
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
