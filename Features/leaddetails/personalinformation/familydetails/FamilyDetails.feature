@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-vipin.kishor
@Reconciled
#${ApplicantType:["indiv"]}

Feature:Family Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #SquashiID:01-CAS-59474
  #FeatureID-ACAUTOCAS-156,CAS-59474
  @Sanity
  Scenario Outline: ACAUTOCAS-13450: Save personal information detail without adding any row in family details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open family accordion
    When user save personal information detail without adding any row in family details
    Then personal information should be saved successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-3
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-3
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-3
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | category   | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  #SquashiID:02-CAS-59474
  #FeatureID-ACAUTOCAS-156,CAS-59474
  Scenario Outline: ACAUTOCAS-13451: Family details becomes mandatory if <Field> field entered at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open family accordion
    And user deletes existing family details
    And user add new entry family details
    And user reads data from the excel file "personal_information.xlsx" under sheet "family" and row <personalInformation_family_home_rowNum>
    And user fill "<Field>" in family details
    When user saves the family details
    Then family details should not be saved on filling "<Field>" of Family Details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-3
    @ImplementedBy-tanya
    Examples:
      | Field            | ProductType   | ApplicantType   | ApplicationStage   | category | key | personalInformation_family_home_rowNum |
      | Member Name      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 0                                      |
      | Relationship     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 1                                      |
      | Date Of Birth    | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 2                                      |
      | Phone Number     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 3                                      |
      | Education Status | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 4                                      |
      | Occupation       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 5                                      |
      | Is Dependent     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 0                                      |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-3
    @ImplementedBy-tanya
    Examples:
      | Field            | ProductType   | ApplicantType   | ApplicationStage   | category | key | personalInformation_family_home_rowNum |
      | Member Name      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 0                                      |
      | Relationship     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 1                                      |
      | Date Of Birth    | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 2                                      |
      | Phone Number     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 3                                      |
      | Education Status | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 4                                      |
      | Occupation       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 5                                      |
      | Is Dependent     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 0                                      |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-3
    @ImplementedBy-tanya
    Examples:
      | Field            | ProductType   | ApplicantType   | ApplicationStage   | category   | key | personalInformation_family_home_rowNum |
      | Member Name      | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | 0                                      |
      | Relationship     | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | 1                                      |
      | Date Of Birth    | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | 2                                      |
      | Phone Number     | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | 3                                      |
      | Education Status | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | 4                                      |
      | Occupation       | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | 5                                      |
      | Is Dependent     | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     | 0                                      |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Field            | ProductType   | ApplicantType   | ApplicationStage   | category | key | personalInformation_family_home_rowNum |
      | Member Name      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 0                                      |
      | Relationship     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 1                                      |
      | Date Of Birth    | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 2                                      |
      | Phone Number     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 3                                      |
      | Education Status | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 4                                      |
      | Occupation       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 5                                      |
      | Is Dependent     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 0                                      |

  #SquashiID:03-CAS-59474
  #FeatureID-ACAUTOCAS-156,CAS-59474
  Scenario Outline: ACAUTOCAS-13452: Personal information should be remains in expanded mode after saving Family details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "family" and row 1
    And user fills the family details
    When user save the family details
    Then family details should remain in expanded mode

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-3
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-3
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-3
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | category   | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  #SquashID:04-CAS-59474
  #FeatureID-ACAUTOCAS-156,CAS-59474
  Scenario Outline: ACAUTOCAS-13453: Verify the focus of the page remains same when the page is saved at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open family accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "family" and row 1
    When user fills the family details saving coordinates
    And user save the family details
    Then focus of the cursor should be on family details it should not be refreshed to top of the page

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-3
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-3
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-3
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | category   | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  #FeatureID-ACAUTOCAS-156
  @Sanity
  Scenario Outline: ACAUTOCAS-13454: <Save_Next> family details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open family accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "family" and row 1
    And user fills the family details
    When user clicks on "<Save_Next>" button on personal information
    Then personal information should be saved successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-3
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | category | key |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-3
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | category | key |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-3
    @ImplementedBy-tanya
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | category   | key |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> | <category> |     |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> | <category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | category | key |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     |
