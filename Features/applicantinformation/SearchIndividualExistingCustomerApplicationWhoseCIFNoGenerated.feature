@Epic-Applicant_Information
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor

  #${ApplicantType:["indiv","nonindiv"]}
Feature:Search Individual Existing Customer Application Whose CIF No Is Generated

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

   @Sanity
  #FeatureID-ACAUTOCAS-133
  Scenario Outline: ACAUTOCAS-11560: Search existing individual customer in <ProductType> application with combination of <var1> <var2> whose cif number is generated
    When user creates "<ProductType>" application with existing customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationInfo_searchCustomer>" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the customer with "<var1>" "<var2>" whose cif number is generated
    Then search should be done without any error
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var1          | var2                              | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | Customer Name | Date Of Birth                     | ApplicationInformation.xlsx | searchcustomer                 | 240                                   |
      | <ProductType> | Customer Name | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 241                                   |
      | <ProductType> | Customer Name | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 242                                   |
      | <ProductType> | Customer Name | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 243                                   |
      | <ProductType> | Date Of Birth | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 244                                   |
      | <ProductType> | Date Of Birth | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 245                                   |
      | <ProductType> | Date Of Birth | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 246                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF","IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var1          | var2                              | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | Customer Name | Date Of Birth                     | ApplicationInformation.xlsx | searchcustomer                 | 285                                   |
      | <ProductType> | Customer Name | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 286                                   |
      | <ProductType> | Customer Name | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 287                                   |
      | <ProductType> | Customer Name | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 288                                   |
      | <ProductType> | Date Of Birth | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 289                                   |
      | <ProductType> | Date Of Birth | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 290                                   |
      | <ProductType> | Date Of Birth | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 291                                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | var1          | var2                              | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | Customer Name | Date Of Birth                     | ApplicationInformation.xlsx | searchcustomer                 | 240                                   |
      | <ProductType> | Customer Name | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 241                                   |
      | <ProductType> | Customer Name | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 242                                   |
      | <ProductType> | Customer Name | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 243                                   |
      | <ProductType> | Date Of Birth | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 244                                   |
      | <ProductType> | Date Of Birth | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 245                                   |
      | <ProductType> | Date Of Birth | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 246                                   |

  #FeatureID-ACAUTOCAS-133
  Scenario Outline: ACAUTOCAS-11559: Search existing customer in <ProductType> application with <var> only whose cif number is generated
    When user creates "<ProductType>" application with existing customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationInfo_searchCustomer>" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the customer with "<var>" whose cif number is generated
    Then proper error message should be display
    @Conventional
    @Release @Part-2
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var                 | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | Customer Name       | ApplicationInformation.xlsx | searchcustomer                 | 234                                   |
      | <ProductType> | Date Of Birth       | ApplicationInformation.xlsx | searchcustomer                 | 239                                   |
      | <ProductType> | Identification Type | ApplicationInformation.xlsx | searchcustomer                 | 252                                   |
      | <ProductType> | Id Number           | ApplicationInformation.xlsx | searchcustomer                 | 253                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF","IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var                 | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | Customer Name       | ApplicationInformation.xlsx | searchcustomer                 | 261                                   |
      | <ProductType> | Date Of Birth       | ApplicationInformation.xlsx | searchcustomer                 | 262                                   |
      | <ProductType> | Identification Type | ApplicationInformation.xlsx | searchcustomer                 | 263                                   |
      | <ProductType> | Id Number           | ApplicationInformation.xlsx | searchcustomer                 | 264                                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | var                 | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | Customer Name       | ApplicationInformation.xlsx | searchcustomer                 | 234                                   |
      | <ProductType> | Date Of Birth       | ApplicationInformation.xlsx | searchcustomer                 | 239                                   |
      | <ProductType> | Identification Type | ApplicationInformation.xlsx | searchcustomer                 | 252                                   |
      | <ProductType> | Id Number           | ApplicationInformation.xlsx | searchcustomer                 | 253                                   |

  #FeatureID-ACAUTOCAS-133
  Scenario Outline: ACAUTOCAS-11558: Search individual existing customer in existing application of <ProductType> with <var> at <ApplicationStage> in external whose cif number is generated
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 23
    And user inputs landline phone number in case of "<var>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationInfo_searchCustomer>" and row <ApplicationInfo_searchCustomer_rowNum>
    And user opens applicant info page of "<ApplicationStage>"
    And user clicks on add another applicant with poll
    And user click on existing customer button
    And user search the individual application with "<var>"
    Then customer details should not be displayed in search result
    @Conventional
    @Release @Part-2
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | Category | key | ApplicationStage   | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Neo Cust ID                       | ApplicationInformation.xlsx | searchcustomer                 | 226                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Application Id/Deal Id            | ApplicationInformation.xlsx | searchcustomer                 | 228                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 229                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 230                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 231                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
     #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | Category | key | ApplicationStage   | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Neo Cust ID                       | ApplicationInformation.xlsx | searchcustomer                 | 226                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Application Id/Deal Id            | ApplicationInformation.xlsx | searchcustomer                 | 228                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 276                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 284                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 231                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | Category   | key | ApplicationStage   | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Neo Cust ID                       | ApplicationInformation.xlsx | searchcustomer                 | 226                                   |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Application Id/Deal Id            | ApplicationInformation.xlsx | searchcustomer                 | 228                                   |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 171                                   |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 284                                   |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 231                                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | Category | key | ApplicationStage   | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Neo Cust ID                       | ApplicationInformation.xlsx | searchcustomer                 | 226                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Application Id/Deal Id            | ApplicationInformation.xlsx | searchcustomer                 | 228                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 229                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 230                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 231                                   |

  #FeatureID-ACAUTOCAS-133
  @Sanity
  @FixedTest28
  Scenario Outline: ACAUTOCAS-11557: Search individual existing customer in existing application of <ProductType> with <var> at <ApplicationStage> in both whose cif number is generated
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 23
    And user inputs landline phone number in case of "<var>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationInfo_searchCustomer>" and row <ApplicationInfo_searchCustomer_rowNum>
    And user opens applicant info page of "<ApplicationStage>"
    And user clicks on add another applicant with poll
    And user click on existing customer button
    And user search the individual customer with "<var>" whose cif number is generated
    Then customer details should be displayed in search result
    @Conventional
    @Release @Part-2
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | Category | key | ApplicationStage   | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Neo Cust ID                       | ApplicationInformation.xlsx | searchcustomer                 | 233                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Application Id/Deal Id            | ApplicationInformation.xlsx | searchcustomer                 | 235                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 236                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 237                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 238                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | Category | key | ApplicationStage   | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Neo Cust ID                       | ApplicationInformation.xlsx | searchcustomer                 | 233                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Application Id/Deal Id            | ApplicationInformation.xlsx | searchcustomer                 | 235                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 276                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 284                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 238                                   |

    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | Category   | key | ApplicationStage   | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Neo Cust ID                       | ApplicationInformation.xlsx | searchcustomer                 | 233                                   |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Application Id/Deal Id            | ApplicationInformation.xlsx | searchcustomer                 | 235                                   |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 276                                   |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 284                                   |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 238                                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | Category | key | ApplicationStage   | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Neo Cust ID                       | ApplicationInformation.xlsx | searchcustomer                 | 233                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Application Id/Deal Id            | ApplicationInformation.xlsx | searchcustomer                 | 235                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 236                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 237                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 238                                   |

  #FeatureID-ACAUTOCAS-133
  @Sanity
  @FixedTest28
  Scenario Outline: ACAUTOCAS-11556: Search individual existing customer in existing application of <ProductType> with <var> at <ApplicationStage> in gcd whose cif number is generated
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 23
    And user inputs landline phone number in case of "<var>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationInfo_searchCustomer>" and row <ApplicationInfo_searchCustomer_rowNum>
    And user opens applicant info page of "<ApplicationStage>"
    And user clicks on add another applicant with poll
    And user click on existing customer button
    And user search the individual customer with "<var>" whose cif number is generated
    Then customer details should be displayed in search result
    @Conventional
    @Release @Part-2
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | Category | key | ApplicationStage   | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Neo Cust ID                       | ApplicationInformation.xlsx | searchcustomer                 | 212                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Application Id/Deal Id            | ApplicationInformation.xlsx | searchcustomer                 | 214                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 215                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 216                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 217                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | Category | key | ApplicationStage   | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Neo Cust ID                       | ApplicationInformation.xlsx | searchcustomer                 | 212                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Application Id/Deal Id            | ApplicationInformation.xlsx | searchcustomer                 | 214                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 276                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 284                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 217                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | Category   | key | ApplicationStage   | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Neo Cust ID                       | ApplicationInformation.xlsx | searchcustomer                 | 212                                   |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Application Id/Deal Id            | ApplicationInformation.xlsx | searchcustomer                 | 214                                   |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 276                                   |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 284                                   |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 217                                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | Category | key | ApplicationStage   | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Neo Cust ID                       | ApplicationInformation.xlsx | searchcustomer                 | 212                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Application Id/Deal Id            | ApplicationInformation.xlsx | searchcustomer                 | 214                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 215                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 216                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 217                                   |

  #FeatureID-ACAUTOCAS-133
  Scenario Outline: ACAUTOCAS-11555: Search individual existing customer in existing application of <ProductType> at <ApplicationStage> stage with <var> in internal database whose cif number is generated yet
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 23
    And user inputs landline phone number in case of "<var>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationInfo_searchCustomer>" and row <ApplicationInfo_searchCustomer_rowNum>
    And user opens applicant info page of "<ApplicationStage>"
    And user clicks on add another applicant with poll
    And user click on existing customer button
    And user search the individual customer with "<var>" whose cif number is generated
    Then customer details should not be displayed in search result
    @Conventional
    @Release @Part-2
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | Category | key | ApplicationStage   | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Neo Cust ID                       | ApplicationInformation.xlsx | searchcustomer                 | 219                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Date Of Birth                     | ApplicationInformation.xlsx | searchcustomer                 | 225                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 222                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 223                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 224                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | Category | key | ApplicationStage   | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Neo Cust ID                       | ApplicationInformation.xlsx | searchcustomer                 | 219                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Date Of Birth                     | ApplicationInformation.xlsx | searchcustomer                 | 225                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 276                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 284                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 224                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | Category   | key | ApplicationStage   | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Neo Cust ID                       | ApplicationInformation.xlsx | searchcustomer                 | 219                                   |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | DOB                               | ApplicationInformation.xlsx | searchcustomer                 | 290                                   |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 295                                   |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 284                                   |
      | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 224                                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | Category | key | ApplicationStage   | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Neo Cust ID                       | ApplicationInformation.xlsx | searchcustomer                 | 219                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Date Of Birth                     | ApplicationInformation.xlsx | searchcustomer                 | 225                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Mobile)              | ApplicationInformation.xlsx | searchcustomer                 | 222                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Identification Type and ID Number | ApplicationInformation.xlsx | searchcustomer                 | 223                                   |
      | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | Phone Number(Landline)            | ApplicationInformation.xlsx | searchcustomer                 | 224                                   |
