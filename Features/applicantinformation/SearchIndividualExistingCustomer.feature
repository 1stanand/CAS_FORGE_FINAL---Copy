@Epic-Applicant_Information
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-pushp.bhandari
@AppInfoFixed5

    #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-133
Feature: Search Individual Existing Customer Application Whose CIF No Is Not Generated

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7
  @Sanity
  Scenario Outline: ACAUTOCAS-907: Search individual existing customer in existing application of <ProductType> at <ApplicationStage> stage with <var> in both whose cif number is not generated yet
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 23
    And user inputs landline phone number in case of "<var>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant info page of "<ApplicationStage>"
    And user clicks on add another applicant with poll
    And user click on existing customer button
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the individual customer with "<var>" whose cif number is not generated yet
    Then customer details should be displayed in search result
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Neo Cust ID                       | ApplicationInformation.xlsx | 247                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Application Id/Deal Id            | ApplicationInformation.xlsx | 248                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Mobile)              | ApplicationInformation.xlsx | 249                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Identification Type and ID Number | ApplicationInformation.xlsx | 250                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Landline)            | ApplicationInformation.xlsx | 251                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Neo Cust ID                       | ApplicationInformation.xlsx | 279                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Application Id/Deal Id            | ApplicationInformation.xlsx | 280                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Mobile)              | ApplicationInformation.xlsx | 281                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Identification Type and ID Number | ApplicationInformation.xlsx | 282                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Landline)            | ApplicationInformation.xlsx | 283                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category   | key | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Neo Cust ID                       | ApplicationInformation.xlsx | 279                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Application Id/Deal Id            | ApplicationInformation.xlsx | 280                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Phone Number(Mobile)              | ApplicationInformation.xlsx | 281                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Identification Type and ID Number | ApplicationInformation.xlsx | 282                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Phone Number(Landline)            | ApplicationInformation.xlsx | 283                                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Neo Cust ID                       | ApplicationInformation.xlsx | 247                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Application Id/Deal Id            | ApplicationInformation.xlsx | 248                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Mobile)              | ApplicationInformation.xlsx | 249                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Identification Type and ID Number | ApplicationInformation.xlsx | 250                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Landline)            | ApplicationInformation.xlsx | 251                                   |

  @Sanity
  @FixedTest28
  Scenario Outline: ACAUTOCAS-11549: Search individual existing customer in existing application of <ProductType> at <ApplicationStage> stage with <var> in internal database whose cif number is not generated yet
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 23
    And user inputs landline phone number in case of "<var>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant info page of "<ApplicationStage>"
    And user clicks on add another applicant with poll
    And user click on existing customer button
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the individual customer with "<var>" whose cif number is not generated yet
    Then customer details should be displayed in search result
    @Conventional
    @Release @Part-2
    @ImplementedBy-rishabh.sachan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Neo Cust ID                       | ApplicationInformation.xlsx | 187                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Mobile)              | ApplicationInformation.xlsx | 188                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Identification Type and ID Number | ApplicationInformation.xlsx | 189                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Landline)            | ApplicationInformation.xlsx | 190                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Neo Cust ID                       | ApplicationInformation.xlsx | 275                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Mobile)              | ApplicationInformation.xlsx | 276                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Identification Type and ID Number | ApplicationInformation.xlsx | 277                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Landline)            | ApplicationInformation.xlsx | 278                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category   | key | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Neo Cust ID                       | ApplicationInformation.xlsx | 275                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Phone Number(Mobile)              | ApplicationInformation.xlsx | 276                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Identification Type and ID Number | ApplicationInformation.xlsx | 277                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Phone Number(Landline)            | ApplicationInformation.xlsx | 278                                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Neo Cust ID                       | ApplicationInformation.xlsx | 187                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Mobile)              | ApplicationInformation.xlsx | 188                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Identification Type and ID Number | ApplicationInformation.xlsx | 189                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Landline)            | ApplicationInformation.xlsx | 190                                   |

  Scenario Outline: ACAUTOCAS-11550:  Search individual existing customer in existing application of <ProductType> at <ApplicationStage> stage with <var> in gcd whose cif number is not generated yet
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 23
    And user inputs landline phone number in case of "<var>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant info page of "<ApplicationStage>"
    And user clicks on add another applicant with poll
    And user click on existing customer button
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the individual customer with "<var>" whose cif number is not generated yet
    Then customer details should not be displayed in search result
    @Conventional
    @Release @Part-2
    @ImplementedBy-rishabh.sachan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Neo Cust ID                       | ApplicationInformation.xlsx | 191                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Application Id/Deal Id            | ApplicationInformation.xlsx | 192                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Mobile)              | ApplicationInformation.xlsx | 193                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Identification Type and ID Number | ApplicationInformation.xlsx | 194                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Landline)            | ApplicationInformation.xlsx | 195                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Neo Cust ID                       | ApplicationInformation.xlsx | 270                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Application Id/Deal Id            | ApplicationInformation.xlsx | 271                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Mobile)              | ApplicationInformation.xlsx | 272                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Identification Type and ID Number | ApplicationInformation.xlsx | 273                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Landline)            | ApplicationInformation.xlsx | 274                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category   | key | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Neo Cust ID                       | ApplicationInformation.xlsx | 270                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Application Id/Deal Id            | ApplicationInformation.xlsx | 271                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Phone Number(Mobile)              | ApplicationInformation.xlsx | 272                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Identification Type and ID Number | ApplicationInformation.xlsx | 273                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Phone Number(Landline)            | ApplicationInformation.xlsx | 274                                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Neo Cust ID                       | ApplicationInformation.xlsx | 191                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Application Id/Deal Id            | ApplicationInformation.xlsx | 192                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Mobile)              | ApplicationInformation.xlsx | 193                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Identification Type and ID Number | ApplicationInformation.xlsx | 194                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Landline)            | ApplicationInformation.xlsx | 195                                   |


  Scenario Outline: ACAUTOCAS-11551: Search individual existing customer in existing application of <ProductType> at <ApplicationStage> with <var> in external whose cif number is not generated yet
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 23
    And user inputs landline phone number in case of "<var>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant info page of "<ApplicationStage>"
    And user clicks on add another applicant with poll
    And user click on existing customer button
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the individual customer with "<var>" whose cif number is not generated yet
    Then customer details should not be displayed in search result
    @Conventional
    @Release @Part-2
    @ImplementedBy-rishabh.sachan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Neo Cust ID                       | ApplicationInformation.xlsx | 196                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Application Id/Deal Id            | ApplicationInformation.xlsx | 197                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Mobile)              | ApplicationInformation.xlsx | 198                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Identification Type and ID Number | ApplicationInformation.xlsx | 199                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Landline)            | ApplicationInformation.xlsx | 200                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Neo Cust ID                       | ApplicationInformation.xlsx | 265                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Application Id/Deal Id            | ApplicationInformation.xlsx | 266                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Mobile)              | ApplicationInformation.xlsx | 267                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Identification Type and ID Number | ApplicationInformation.xlsx | 268                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Landline)            | ApplicationInformation.xlsx | 269                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category   | key | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Neo Cust ID                       | ApplicationInformation.xlsx | 265                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Application Id/Deal Id            | ApplicationInformation.xlsx | 266                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Phone Number(Mobile)              | ApplicationInformation.xlsx | 267                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Identification Type and ID Number | ApplicationInformation.xlsx | 268                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> | <Category> |     | Phone Number(Landline)            | ApplicationInformation.xlsx | 269                                   |

    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | ProductType   | ApplicationStage   | Category | key | var                               | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Neo Cust ID                       | ApplicationInformation.xlsx | 196                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Application Id/Deal Id            | ApplicationInformation.xlsx | 197                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Mobile)              | ApplicationInformation.xlsx | 198                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Identification Type and ID Number | ApplicationInformation.xlsx | 199                                   |
      | <ApplicantType> | <ProductType> | <ApplicationStage> |          |     | Phone Number(Landline)            | ApplicationInformation.xlsx | 200                                   |


  #FeatureID-ACAUTOCAS-133
  Scenario Outline: ACAUTOCAS-11553: Search existing customer in <ProductType> application with <var> only whose cif number not generated yet
    When user create new application for "<ProductType>" for existing customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the customer with "<var>" whose cif number is not generated yet
    Then proper error message should be display
    @Conventional
    @Release @Part-2
    @ImplementedBy-rishabh.sachan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | var                 | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | Customer Name       | ApplicationInformation.xlsx | 201                                   |
      | <ProductType> | Date Of Birth       | ApplicationInformation.xlsx | 202                                   |
      | <ProductType> | Identification Type | ApplicationInformation.xlsx | 203                                   |
      | <ProductType> | Id Number           | ApplicationInformation.xlsx | 204                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    Examples:
      | ProductType   | var                 | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | Customer Name       | ApplicationInformation.xlsx | 261                                   |
      | <ProductType> | Date Of Birth       | ApplicationInformation.xlsx | 262                                   |
      | <ProductType> | Identification Type | ApplicationInformation.xlsx | 263                                   |
      | <ProductType> | Id Number           | ApplicationInformation.xlsx | 264                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick
    #${ProductType:["IPF"]}
    Examples:
      | ProductType   | var                 | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | Customer Name       | ApplicationInformation.xlsx | 261                                   |
      | <ProductType> | Date Of Birth       | ApplicationInformation.xlsx | 262                                   |
      | <ProductType> | Identification Type | ApplicationInformation.xlsx | 263                                   |
      | <ProductType> | Id Number           | ApplicationInformation.xlsx | 264                                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | ProductType   | var                 | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | Customer Name       | ApplicationInformation.xlsx | 201                                   |
      | <ProductType> | Date Of Birth       | ApplicationInformation.xlsx | 202                                   |
      | <ProductType> | Identification Type | ApplicationInformation.xlsx | 203                                   |
      | <ProductType> | Id Number           | ApplicationInformation.xlsx | 204                                   |
  @Sanity
  Scenario Outline: ACAUTOCAS-11554: Search existing individual customer in home loan application with combination of <var1> <var2> whose cif number is not generated yet
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 23
    And user inputs landline phone number in case of "<var2>"
    When user create new application for "<ProductType>" for existing customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the customer with "<var1>" "<var2>" whose cif number is not generated
    Then search should be done without any error
    @Conventional
    @Release @Part-2
    @ImplementedBy-rishabh.sachan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | var1          | var2                              | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | Customer Name | Date Of Birth                     | ApplicationInformation.xlsx | 205                                   |
      | <ProductType> | Customer Name | Phone Number(Mobile)              | ApplicationInformation.xlsx | 206                                   |
      | <ProductType> | Customer Name | Phone Number(Landline)            | ApplicationInformation.xlsx | 207                                   |
      | <ProductType> | Customer Name | Identification Type and ID Number | ApplicationInformation.xlsx | 208                                   |
      | <ProductType> | Date Of Birth | Phone Number(Mobile)              | ApplicationInformation.xlsx | 209                                   |
      | <ProductType> | Date Of Birth | Phone Number(Landline)            | ApplicationInformation.xlsx | 210                                   |
      | <ProductType> | Date Of Birth | Identification Type and ID Number | ApplicationInformation.xlsx | 211                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    Examples:
      | ProductType   | var1          | var2                              | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | Customer Name | Date Of Birth                     | ApplicationInformation.xlsx | 254                                   |
      | <ProductType> | Customer Name | Phone Number(Mobile)              | ApplicationInformation.xlsx | 255                                   |
      | <ProductType> | Customer Name | Phone Number(Landline)            | ApplicationInformation.xlsx | 256                                   |
      | <ProductType> | Customer Name | Identification Type and ID Number | ApplicationInformation.xlsx | 257                                   |
      | <ProductType> | Date Of Birth | Phone Number(Mobile)              | ApplicationInformation.xlsx | 258                                   |
      | <ProductType> | Date Of Birth | Phone Number(Landline)            | ApplicationInformation.xlsx | 259                                   |
      | <ProductType> | Date Of Birth | Identification Type and ID Number | ApplicationInformation.xlsx | 260                                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick
    #${ProductType:["IPF"]}
    Examples:
      | ProductType   | var1          | var2                              | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | Customer Name | Date Of Birth                     | ApplicationInformation.xlsx | 254                                   |
      | <ProductType> | Customer Name | Phone Number(Mobile)              | ApplicationInformation.xlsx | 255                                   |
      | <ProductType> | Customer Name | Phone Number(Landline)            | ApplicationInformation.xlsx | 256                                   |
      | <ProductType> | Customer Name | Identification Type and ID Number | ApplicationInformation.xlsx | 257                                   |
      | <ProductType> | Date Of Birth | Phone Number(Mobile)              | ApplicationInformation.xlsx | 258                                   |
      | <ProductType> | Date Of Birth | Phone Number(Landline)            | ApplicationInformation.xlsx | 259                                   |
      | <ProductType> | Date Of Birth | Identification Type and ID Number | ApplicationInformation.xlsx | 260                                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | ProductType   | var1          | var2                              | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | <ProductType> | Customer Name | Date Of Birth                     | ApplicationInformation.xlsx | 205                                   |
      | <ProductType> | Customer Name | Phone Number(Mobile)              | ApplicationInformation.xlsx | 206                                   |
      | <ProductType> | Customer Name | Phone Number(Landline)            | ApplicationInformation.xlsx | 207                                   |
      | <ProductType> | Customer Name | Identification Type and ID Number | ApplicationInformation.xlsx | 208                                   |
      | <ProductType> | Date Of Birth | Phone Number(Mobile)              | ApplicationInformation.xlsx | 209                                   |
      | <ProductType> | Date Of Birth | Phone Number(Landline)            | ApplicationInformation.xlsx | 210                                   |
      | <ProductType> | Date Of Birth | Identification Type and ID Number | ApplicationInformation.xlsx | 211                                   |

