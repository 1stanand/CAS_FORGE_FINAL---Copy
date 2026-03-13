@Epic-Applicant_Information
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@AppInfoFixed5

  #${ApplicantType:["indiv","nonindiv"]}
Feature:Search Individual Existing Customer Application Whose CIF No Is Not Generated

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

#FeatureID-ACAUTOCAS-133
  @Sanity
  @FixedTest28
  Scenario Outline: ACAUTOCAS-5540: Search individual existing customer in existing application of <ProductType> at <ApplicationStage> stage in internal database whose cif number is not generated yet
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant info page of "<ApplicationStage>"
    And user clicks on add another applicant with poll
    And user click on existing customer button
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    When user search the application with field and value
    Then customer details should be displayed in search result
    @Conventional
    @Release @Part-2
    @ImplementedBy-aniket.tripathi
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 0                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 1                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 4                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 5                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 6                                     |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 0                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 1                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 4                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 284                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 6                                     |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category   | key | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 0                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 1                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 4                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 284                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 6                                     |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 0                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 1                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 4                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 5                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 6                                     |


#FeatureID-ACAUTOCAS-133
  Scenario Outline: ACAUTOCAS-5541: Search individual existing customer in existing application of <ProductType> at <ApplicationStage> stage in gcd whose cif number is not generated yet
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant info page of "<ApplicationStage>"
    And user clicks on add another applicant with poll
    And user click on existing customer button
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    When user search the application with field and value
    Then customer details should not be displayed in search result

    @Conventional
    @Release @Part-2
    @ImplementedBy-aniket.tripathi
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 14                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 15                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 18                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 19                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 20                                    |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 14                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 15                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 18                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 284                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 20                                    |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category   | key | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 14                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 15                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 18                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 284                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 20                                    |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 14                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 15                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 18                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 19                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 20                                    |

    #FeatureID-ACAUTOCAS-133
  Scenario Outline: ACAUTOCAS-5542: Search individual existing customer in existing application of <ProductType> at <ApplicationStage> in external whose cif number is not generated yet
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant info page of "<ApplicationStage>"
    And user clicks on add another applicant with poll
    And user click on existing customer button
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    When user search the application with field and value
    Then customer details should not be displayed in search result of external
    @Conventional
    @Release @Part-2
    @ImplementedBy-aryan.jain
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 7                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 8                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 11                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 12                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 13                                    |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 7                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 8                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 11                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 284                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 13                                    |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category   | key | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 14                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 15                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 18                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 284                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 20                                    |

    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 7                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 8                                     |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 11                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 12                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 13                                    |

    #FeatureID-ACAUTOCAS-133
  @Sanity
  @FixedTest28
  Scenario Outline: ACAUTOCAS-5543: Search individual existing customer in existing application of <ProductType> at <ApplicationStage> stage in both whose cif number is not generated yet
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant info page of "<ApplicationStage>"
    And user clicks on add another applicant with poll
    And user click on existing customer button
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    When user search the application with field and value
    Then customer details should be displayed in search result for both
    @Conventional
    @Release @Part-2
    @ImplementedBy-aryan.jain
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 21                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 22                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 25                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 26                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 27                                    |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 21                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 22                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 25                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 284                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 27                                    |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category   | key | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 21                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 22                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 25                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 284                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | ApplicationInformation.xlsx | 298                                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 21                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 22                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 25                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 26                                    |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | ApplicationInformation.xlsx | 27                                    |


#FeatureID-ACAUTOCAS-133
  Scenario Outline: ACAUTOCAS-5544: Search existing customer in <ProductType> only whose cif number is not generated yet
    When user create new application for "<ProductType>" for existing customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the application with field and value only
    Then proper error message should be display
    @Conventional
    @Release @Part-2
    @ImplementedBy-aniket.tripathi
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | ApplicationInformation.xlsx | 128                                   |
      | <ProductType> | ApplicationInformation.xlsx | 129                                   |
      | <ProductType> | ApplicationInformation.xlsx | 130                                   |
      | <ProductType> | ApplicationInformation.xlsx | 131                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick
    #${ProductType:["IHF","IAF","IPF"]}
    Examples:
      | ProductType   | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | ApplicationInformation.xlsx | 299                                   |
      | <ProductType> | ApplicationInformation.xlsx | 129                                   |
      | <ProductType> | ApplicationInformation.xlsx | 130                                   |
      | <ProductType> | ApplicationInformation.xlsx | 300                                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | ProductType   | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | ApplicationInformation.xlsx | 128                                   |
      | <ProductType> | ApplicationInformation.xlsx | 129                                   |
      | <ProductType> | ApplicationInformation.xlsx | 130                                   |
      | <ProductType> | ApplicationInformation.xlsx | 131                                   |



#FeatureID-ACAUTOCAS-133
  @FixedTest28
  Scenario Outline: ACAUTOCAS-5545:  Search existing individual customer in <ProductType> with combination of fields whose cif number is not generated yet
    When user create new application for "<ProductType>" for existing customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the application with multiple fields
    Then search should be done
    @Conventional
    @Release @Part-2
    @ImplementedBy-aryan.jain
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | ApplicationInformation.xlsx | 0                                     |
      | <ProductType> | ApplicationInformation.xlsx | 1                                     |
      | <ProductType> | ApplicationInformation.xlsx | 2                                     |
      | <ProductType> | ApplicationInformation.xlsx | 3                                     |
      | <ProductType> | ApplicationInformation.xlsx | 4                                     |
      | <ProductType> | ApplicationInformation.xlsx | 5                                     |
      | <ProductType> | ApplicationInformation.xlsx | 6                                     |

    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF","IPF"]}
    Examples:
      | ProductType   | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | ApplicationInformation.xlsx | 0                                     |
      | <ProductType> | ApplicationInformation.xlsx | 1                                     |
      | <ProductType> | ApplicationInformation.xlsx | 294                                   |
      | <ProductType> | ApplicationInformation.xlsx | 292                                   |
      | <ProductType> | ApplicationInformation.xlsx | 4                                     |
      | <ProductType> | ApplicationInformation.xlsx | 296                                   |
      | <ProductType> | ApplicationInformation.xlsx | 297                                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | ProductType   | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | ApplicationInformation.xlsx | 0                                     |
      | <ProductType> | ApplicationInformation.xlsx | 1                                     |
      | <ProductType> | ApplicationInformation.xlsx | 2                                     |
      | <ProductType> | ApplicationInformation.xlsx | 3                                     |
      | <ProductType> | ApplicationInformation.xlsx | 4                                     |
      | <ProductType> | ApplicationInformation.xlsx | 5                                     |
      | <ProductType> | ApplicationInformation.xlsx | 6                                     |




