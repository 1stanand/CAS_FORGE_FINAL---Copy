@Epic-Applicant_Information
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
#FeatureID-ACAUTOCAS-134
Feature:Search Non Individual Existing Customer

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7


  Scenario Outline: ACAUTOCAS-914: Search existing non individual customer of <Loan_Type> with combination of fields
    When user create new application for "<ProductType>" for existing non individual customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the application with fields and values
    Then search should be done without any error for non individual
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | Home Loan     | ApplicationInformation.xlsx | 21                                    |
      | Home Loan     | ApplicationInformation.xlsx | 22                                    |
      | Home Loan     | ApplicationInformation.xlsx | 23                                    |
      | Home Loan     | ApplicationInformation.xlsx | 24                                    |
      | Home Loan     | ApplicationInformation.xlsx | 25                                    |
      | Home Loan     | ApplicationInformation.xlsx | 26                                    |
      | Personal Loan | ApplicationInformation.xlsx | 27                                    |
      | Personal Loan | ApplicationInformation.xlsx | 28                                    |
      | Personal Loan | ApplicationInformation.xlsx | 29                                    |
      | Personal Loan | ApplicationInformation.xlsx | 30                                    |
      | Personal Loan | ApplicationInformation.xlsx | 31                                    |
      | Personal Loan | ApplicationInformation.xlsx | 32                                    |
      | Auto Loan     | ApplicationInformation.xlsx | 33                                    |
      | Auto Loan     | ApplicationInformation.xlsx | 34                                    |
      | Auto Loan     | ApplicationInformation.xlsx | 35                                    |
      | Auto Loan     | ApplicationInformation.xlsx | 36                                    |
      | Auto Loan     | ApplicationInformation.xlsx | 37                                    |
      | Auto Loan     | ApplicationInformation.xlsx | 38                                    |

    @Islamic
    @Release
    @Part-3
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | ProductType | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | IHF         | ApplicationInformation.xlsx | 21                                    |
      | IHF         | ApplicationInformation.xlsx | 22                                    |
      | IHF         | ApplicationInformation.xlsx | 23                                    |
      | IHF         | ApplicationInformation.xlsx | 24                                    |
      | IHF         | ApplicationInformation.xlsx | 25                                    |
      | IHF         | ApplicationInformation.xlsx | 26                                    |
      | IPF         | ApplicationInformation.xlsx | 27                                    |
      | IPF         | ApplicationInformation.xlsx | 28                                    |
      | IPF         | ApplicationInformation.xlsx | 29                                    |
      | IPF         | ApplicationInformation.xlsx | 30                                    |
      | IPF         | ApplicationInformation.xlsx | 31                                    |
      | IPF         | ApplicationInformation.xlsx | 32                                    |
      | IAF         | ApplicationInformation.xlsx | 33                                    |
      | IAF         | ApplicationInformation.xlsx | 34                                    |
      | IAF         | ApplicationInformation.xlsx | 35                                    |
      | IAF         | ApplicationInformation.xlsx | 36                                    |
      | IAF         | ApplicationInformation.xlsx | 37                                    |
      | IAF         | ApplicationInformation.xlsx | 38                                    |

    #NON INDIVIDUAL
    #    cif number is not generated
  #cif number is generate at dde stage it is configurable
#------------------------------------------------
  Scenario Outline: ACAUTOCAS-915: Search non individual existing customer of <Loan_Type> in internal whose cif number is not generated yet
    When user create new application for "<Loan_Type>" for existing non individual customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the non individual application whose cif number is not generated with fields and values in internal
    Then search should be done without any error for non individual
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | Loan_Type     | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | Home Loan     | ApplicationInformation.xlsx | 21                                    |
      | Home Loan     | ApplicationInformation.xlsx | 22                                    |
      | Home Loan     | ApplicationInformation.xlsx | 23                                    |
      | Home Loan     | ApplicationInformation.xlsx | 24                                    |
      | Home Loan     | ApplicationInformation.xlsx | 25                                    |
      | Personal Loan | ApplicationInformation.xlsx | 26                                    |
      | Personal Loan | ApplicationInformation.xlsx | 27                                    |
      | Personal Loan | ApplicationInformation.xlsx | 28                                    |
      | Personal Loan | ApplicationInformation.xlsx | 29                                    |
      | Personal Loan | ApplicationInformation.xlsx | 30                                    |
      | Auto Loan     | ApplicationInformation.xlsx | 31                                    |
      | Auto Loan     | ApplicationInformation.xlsx | 32                                    |
      | Auto Loan     | ApplicationInformation.xlsx | 33                                    |
      | Auto Loan     | ApplicationInformation.xlsx | 34                                    |
      | Auto Loan     | ApplicationInformation.xlsx | 35                                    |

    @Islamic
    @Release
    @Part-3
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | Loan_Type | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | IHF       | ApplicationInformation.xlsx | 21                                    |
      | IHF       | ApplicationInformation.xlsx | 22                                    |
      | IHF       | ApplicationInformation.xlsx | 23                                    |
      | IHF       | ApplicationInformation.xlsx | 24                                    |
      | IHF       | ApplicationInformation.xlsx | 25                                    |
      | IPF       | ApplicationInformation.xlsx | 26                                    |
      | IPF       | ApplicationInformation.xlsx | 27                                    |
      | IPF       | ApplicationInformation.xlsx | 28                                    |
      | IPF       | ApplicationInformation.xlsx | 29                                    |
      | IPF       | ApplicationInformation.xlsx | 30                                    |
      | IAF       | ApplicationInformation.xlsx | 31                                    |
      | IAF       | ApplicationInformation.xlsx | 32                                    |
      | IAF       | ApplicationInformation.xlsx | 33                                    |
      | IAF       | ApplicationInformation.xlsx | 34                                    |
      | IAF       | ApplicationInformation.xlsx | 35                                    |


  Scenario Outline: ACAUTOCAS-916: Search non individual existing customer of <Loan_Type> with values in gcd whose cif number is not generated yet
    When user create new application for "<Loan_Type>" for existing non individual customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the non individual application whose cif number is not generated with field and values in gcd
    Then customer details should not be displayed in search result in non individual
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | Loan_Type     | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | Home Loan     | ApplicationInformation.xlsx | 159                                   |
      | Home Loan     | ApplicationInformation.xlsx | 160                                   |
      | Home Loan     | ApplicationInformation.xlsx | 161                                   |
      | Home Loan     | ApplicationInformation.xlsx | 162                                   |
      | Home Loan     | ApplicationInformation.xlsx | 163                                   |
      | Personal Loan | ApplicationInformation.xlsx | 164                                   |
      | Personal Loan | ApplicationInformation.xlsx | 165                                   |
      | Personal Loan | ApplicationInformation.xlsx | 166                                   |
      | Personal Loan | ApplicationInformation.xlsx | 167                                   |
      | Personal Loan | ApplicationInformation.xlsx | 168                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 169                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 170                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 171                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 172                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 173                                   |

    @Islamic
    @Release
    @Part-3
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | Loan_Type | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | IHF       | ApplicationInformation.xlsx | 159                                   |
      | IHF       | ApplicationInformation.xlsx | 160                                   |
      | IHF       | ApplicationInformation.xlsx | 161                                   |
      | IHF       | ApplicationInformation.xlsx | 162                                   |
      | IHF       | ApplicationInformation.xlsx | 163                                   |
      | IPF       | ApplicationInformation.xlsx | 164                                   |
      | IPF       | ApplicationInformation.xlsx | 165                                   |
      | IPF       | ApplicationInformation.xlsx | 166                                   |
      | IPF       | ApplicationInformation.xlsx | 167                                   |
      | IPF       | ApplicationInformation.xlsx | 168                                   |
      | IAF       | ApplicationInformation.xlsx | 169                                   |
      | IAF       | ApplicationInformation.xlsx | 170                                   |
      | IAF       | ApplicationInformation.xlsx | 171                                   |
      | IAF       | ApplicationInformation.xlsx | 172                                   |
      | IAF       | ApplicationInformation.xlsx | 173                                   |

  @Sanity
  Scenario Outline: ACAUTOCAS-917: Search non individual existing customer of <Loan_Type> with values in external whose cif number is not generated yet
    When user create new application for "<Loan_Type>" for existing non individual customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the non individual application whose cif number is not generated with fields and values in external
    Then customer details should be displayed in search result in non individual
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | Loan_Type     | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | Home Loan     | ApplicationInformation.xlsx | 159                                   |
      | Home Loan     | ApplicationInformation.xlsx | 160                                   |
      | Home Loan     | ApplicationInformation.xlsx | 161                                   |
      | Home Loan     | ApplicationInformation.xlsx | 162                                   |
      | Home Loan     | ApplicationInformation.xlsx | 163                                   |
      | Personal Loan | ApplicationInformation.xlsx | 164                                   |
      | Personal Loan | ApplicationInformation.xlsx | 165                                   |
      | Personal Loan | ApplicationInformation.xlsx | 166                                   |
      | Personal Loan | ApplicationInformation.xlsx | 167                                   |
      | Personal Loan | ApplicationInformation.xlsx | 168                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 169                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 170                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 171                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 172                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 173                                   |

    @Islamic
    @Release
    @Part-3
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | Loan_Type | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | IHF       | ApplicationInformation.xlsx | 159                                   |
      | IHF       | ApplicationInformation.xlsx | 160                                   |
      | IHF       | ApplicationInformation.xlsx | 161                                   |
      | IHF       | ApplicationInformation.xlsx | 162                                   |
      | IHF       | ApplicationInformation.xlsx | 163                                   |
      | IPF       | ApplicationInformation.xlsx | 164                                   |
      | IPF       | ApplicationInformation.xlsx | 165                                   |
      | IPF       | ApplicationInformation.xlsx | 166                                   |
      | IPF       | ApplicationInformation.xlsx | 167                                   |
      | IPF       | ApplicationInformation.xlsx | 168                                   |
      | IAF       | ApplicationInformation.xlsx | 169                                   |
      | IAF       | ApplicationInformation.xlsx | 170                                   |
      | IAF       | ApplicationInformation.xlsx | 171                                   |
      | IAF       | ApplicationInformation.xlsx | 172                                   |
      | IAF       | ApplicationInformation.xlsx | 173                                   |

   @sANITY
  Scenario Outline: ACAUTOCAS-918: Search non individual existing customer of <Loan_Type> with <var> in both whose cif number is not generated yet
    When user create new application for "<Loan_Type>" for existing non individual customer
    #search option will be available in the add another applicant
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the non individual application whose cif number is not generated with field and value in both
    Then customer details should be displayed in search result in non individual
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | Loan_Type     | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | Home Loan     | ApplicationInformation.xlsx | 159                                   |
      | Home Loan     | ApplicationInformation.xlsx | 160                                   |
      | Home Loan     | ApplicationInformation.xlsx | 161                                   |
      | Home Loan     | ApplicationInformation.xlsx | 162                                   |
      | Home Loan     | ApplicationInformation.xlsx | 163                                   |
      | Personal Loan | ApplicationInformation.xlsx | 164                                   |
      | Personal Loan | ApplicationInformation.xlsx | 165                                   |
      | Personal Loan | ApplicationInformation.xlsx | 166                                   |
      | Personal Loan | ApplicationInformation.xlsx | 167                                   |
      | Personal Loan | ApplicationInformation.xlsx | 168                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 169                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 170                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 171                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 172                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 173                                   |

    @Islamic
    @Release
    @Part-3
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | Loan_Type | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | IHF       | ApplicationInformation.xlsx | 159                                   |
      | IHF       | ApplicationInformation.xlsx | 160                                   |
      | IHF       | ApplicationInformation.xlsx | 161                                   |
      | IHF       | ApplicationInformation.xlsx | 162                                   |
      | IHF       | ApplicationInformation.xlsx | 163                                   |
      | IPF       | ApplicationInformation.xlsx | 164                                   |
      | IPF       | ApplicationInformation.xlsx | 165                                   |
      | IPF       | ApplicationInformation.xlsx | 166                                   |
      | IPF       | ApplicationInformation.xlsx | 167                                   |
      | IPF       | ApplicationInformation.xlsx | 168                                   |
      | IAF       | ApplicationInformation.xlsx | 169                                   |
      | IAF       | ApplicationInformation.xlsx | 170                                   |
      | IAF       | ApplicationInformation.xlsx | 171                                   |
      | IAF       | ApplicationInformation.xlsx | 172                                   |
      | IAF       | ApplicationInformation.xlsx | 173                                   |

  #NON INDIVIDUAL
  #cif number is generated
  Scenario Outline: ACAUTOCAS-919: Search non individual existing customer of <Loan_Type> with <var> in internal whose cif number is generated
    When user create new application for "<Loan_Type>" for existing non individual customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the non individual application whose cif number is not generated with fields and values in internal
    Then customer details should not be displayed in search result
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | Loan_Type     | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | Home Loan     | ApplicationInformation.xlsx | 159                                   |
      | Home Loan     | ApplicationInformation.xlsx | 160                                   |
      | Home Loan     | ApplicationInformation.xlsx | 161                                   |
      | Home Loan     | ApplicationInformation.xlsx | 162                                   |
      | Home Loan     | ApplicationInformation.xlsx | 163                                   |
      | Personal Loan | ApplicationInformation.xlsx | 164                                   |
      | Personal Loan | ApplicationInformation.xlsx | 165                                   |
      | Personal Loan | ApplicationInformation.xlsx | 166                                   |
      | Personal Loan | ApplicationInformation.xlsx | 167                                   |
      | Personal Loan | ApplicationInformation.xlsx | 168                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 169                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 170                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 171                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 172                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 173                                   |

    @Islamic
    @Release
    @Part-3
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | Loan_Type | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | IHF       | ApplicationInformation.xlsx | 159                                   |
      | IHF       | ApplicationInformation.xlsx | 160                                   |
      | IHF       | ApplicationInformation.xlsx | 161                                   |
      | IHF       | ApplicationInformation.xlsx | 162                                   |
      | IHF       | ApplicationInformation.xlsx | 163                                   |
      | IPF       | ApplicationInformation.xlsx | 164                                   |
      | IPF       | ApplicationInformation.xlsx | 165                                   |
      | IPF       | ApplicationInformation.xlsx | 166                                   |
      | IPF       | ApplicationInformation.xlsx | 167                                   |
      | IPF       | ApplicationInformation.xlsx | 168                                   |
      | IAF       | ApplicationInformation.xlsx | 169                                   |
      | IAF       | ApplicationInformation.xlsx | 170                                   |
      | IAF       | ApplicationInformation.xlsx | 171                                   |
      | IAF       | ApplicationInformation.xlsx | 172                                   |
      | IAF       | ApplicationInformation.xlsx | 173                                   |


  Scenario Outline: ACAUTOCAS-920: Search non individual existing customer of <Loan_Type> with <var> in gcd whose cif number is generated
    When user create new application for "<Loan_Type>" for existing non individual customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the non individual application whose cif number is generated with field and value in gcd
    Then customer details should be displayed in search result
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | Loan_Type     | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | Home Loan     | ApplicationInformation.xlsx | 159                                   |
      | Home Loan     | ApplicationInformation.xlsx | 160                                   |
      | Home Loan     | ApplicationInformation.xlsx | 161                                   |
      | Home Loan     | ApplicationInformation.xlsx | 162                                   |
      | Home Loan     | ApplicationInformation.xlsx | 163                                   |
      | Personal Loan | ApplicationInformation.xlsx | 164                                   |
      | Personal Loan | ApplicationInformation.xlsx | 165                                   |
      | Personal Loan | ApplicationInformation.xlsx | 166                                   |
      | Personal Loan | ApplicationInformation.xlsx | 167                                   |
      | Personal Loan | ApplicationInformation.xlsx | 168                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 169                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 170                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 171                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 172                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 173                                   |

    @Islamic
    @Release
    @Part-3
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | Loan_Type | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | IHF       | ApplicationInformation.xlsx | 159                                   |
      | IHF       | ApplicationInformation.xlsx | 160                                   |
      | IHF       | ApplicationInformation.xlsx | 161                                   |
      | IHF       | ApplicationInformation.xlsx | 162                                   |
      | IHF       | ApplicationInformation.xlsx | 163                                   |
      | IPF       | ApplicationInformation.xlsx | 164                                   |
      | IPF       | ApplicationInformation.xlsx | 165                                   |
      | IPF       | ApplicationInformation.xlsx | 166                                   |
      | IPF       | ApplicationInformation.xlsx | 167                                   |
      | IPF       | ApplicationInformation.xlsx | 168                                   |
      | IAF       | ApplicationInformation.xlsx | 169                                   |
      | IAF       | ApplicationInformation.xlsx | 170                                   |
      | IAF       | ApplicationInformation.xlsx | 171                                   |
      | IAF       | ApplicationInformation.xlsx | 172                                   |
      | IAF       | ApplicationInformation.xlsx | 173                                   |

  Scenario Outline: ACAUTOCAS-921: Search non individual existing customer of <Loan_Type> with <var> in external whose cif number is generated
    When user create new application for "<Loan_Type>" for existing non individual customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the non individual application whose cif number is generated with field and value in external
    Then customer details should not be displayed in search result
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | Loan_Type     | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | Home Loan     | ApplicationInformation.xlsx | 159                                   |
      | Home Loan     | ApplicationInformation.xlsx | 160                                   |
      | Home Loan     | ApplicationInformation.xlsx | 161                                   |
      | Home Loan     | ApplicationInformation.xlsx | 162                                   |
      | Home Loan     | ApplicationInformation.xlsx | 163                                   |
      | Personal Loan | ApplicationInformation.xlsx | 164                                   |
      | Personal Loan | ApplicationInformation.xlsx | 165                                   |
      | Personal Loan | ApplicationInformation.xlsx | 166                                   |
      | Personal Loan | ApplicationInformation.xlsx | 167                                   |
      | Personal Loan | ApplicationInformation.xlsx | 168                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 169                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 170                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 171                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 172                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 173                                   |

    @Islamic
    @Release
    @Part-3
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | Loan_Type | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | IHF       | ApplicationInformation.xlsx | 159                                   |
      | IHF       | ApplicationInformation.xlsx | 160                                   |
      | IHF       | ApplicationInformation.xlsx | 161                                   |
      | IHF       | ApplicationInformation.xlsx | 162                                   |
      | IHF       | ApplicationInformation.xlsx | 163                                   |
      | IPF       | ApplicationInformation.xlsx | 164                                   |
      | IPF       | ApplicationInformation.xlsx | 165                                   |
      | IPF       | ApplicationInformation.xlsx | 166                                   |
      | IPF       | ApplicationInformation.xlsx | 167                                   |
      | IPF       | ApplicationInformation.xlsx | 168                                   |
      | IAF       | ApplicationInformation.xlsx | 169                                   |
      | IAF       | ApplicationInformation.xlsx | 170                                   |
      | IAF       | ApplicationInformation.xlsx | 171                                   |
      | IAF       | ApplicationInformation.xlsx | 172                                   |
      | IAF       | ApplicationInformation.xlsx | 173                                   |

  Scenario Outline: ACAUTOCAS-922: Search non individual existing customer of <Loan_Type> with <var> in both whose cif number is generated
    When user create new application for "<Loan_Type>" for existing non individual customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "searchcustomer" and row <ApplicationInfo_searchCustomer_rowNum>
    And user search the non individual application whose cif number is generated with field and value in both
    Then customer details should be displayed in search result
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | Loan_Type     | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | Home Loan     | ApplicationInformation.xlsx | 159                                   |
      | Home Loan     | ApplicationInformation.xlsx | 160                                   |
      | Home Loan     | ApplicationInformation.xlsx | 161                                   |
      | Home Loan     | ApplicationInformation.xlsx | 162                                   |
      | Home Loan     | ApplicationInformation.xlsx | 163                                   |
      | Personal Loan | ApplicationInformation.xlsx | 164                                   |
      | Personal Loan | ApplicationInformation.xlsx | 165                                   |
      | Personal Loan | ApplicationInformation.xlsx | 166                                   |
      | Personal Loan | ApplicationInformation.xlsx | 167                                   |
      | Personal Loan | ApplicationInformation.xlsx | 168                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 169                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 170                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 171                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 172                                   |
      | Auto Loan     | ApplicationInformation.xlsx | 173                                   |

    @Islamic
    @Release
    @Part-3
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | Loan_Type | ApplicationInfoWB           | ApplicationInfo_searchCustomer_rowNum |
      | IHF       | ApplicationInformation.xlsx | 159                                   |
      | IHF       | ApplicationInformation.xlsx | 160                                   |
      | IHF       | ApplicationInformation.xlsx | 161                                   |
      | IHF       | ApplicationInformation.xlsx | 162                                   |
      | IHF       | ApplicationInformation.xlsx | 163                                   |
      | IPF       | ApplicationInformation.xlsx | 164                                   |
      | IPF       | ApplicationInformation.xlsx | 165                                   |
      | IPF       | ApplicationInformation.xlsx | 166                                   |
      | IPF       | ApplicationInformation.xlsx | 167                                   |
      | IPF       | ApplicationInformation.xlsx | 168                                   |
      | IAF       | ApplicationInformation.xlsx | 169                                   |
      | IAF       | ApplicationInformation.xlsx | 170                                   |
      | IAF       | ApplicationInformation.xlsx | 171                                   |
      | IAF       | ApplicationInformation.xlsx | 172                                   |
      | IAF       | ApplicationInformation.xlsx | 173                                   |


           # ${ ProductType:["OMNI","SHG","FAS","IHF","IPF","PF","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  @NotImplementable
  Scenario Outline: ACAUTOCAS-5786:  Search non individual existing customer in <ProductType> application with <var> only whose cif number not generated yet
    When user creates new application for "<ProductType>" with existing customer
    And user reads data from the excel file "<ExistingApplicantInfo>" under sheet "<ExistingApplicantInfo_home>" and row <ExistingApplicantInfo_rowNum>
    And user search the customer with "<var>" whose cif number is not generated yet
    Then proper error message should be display
    Examples:
      | var                 | ProductType   | ExistingApplicantInfo      | ExistingApplicantInfo_home | ExistingApplicantInfo_rowNum |
      | Customer Name       | Home Loan     | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Date of Birth       | Home Loan     | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Identification Type | Home Loan     | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Id Number           | Home Loan     | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Customer Name       | Auto Loan     | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Date of Birth       | Auto Loan     | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Identification Type | Auto Loan     | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Id Number           | Auto Loan     | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Customer Name       | Personal Loan | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Date of Birth       | Personal Loan | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Identification Type | Personal Loan | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Id Number           | Personal Loan | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Customer Name       | <ProductType> | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Date of Birth       | <ProductType> | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Identification Type | <ProductType> | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Id Number           | <ProductType> | ExistingApplicantInfo.xlsx | home                       | 0                            |

               # ${ ProductType:["OMNI","SHG","FAS","IHF","IPF","PF","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  @NotImplementable
  Scenario Outline: ACAUTOCAS-5787:  Search non individual existing customer in <ProductType> application with <var> only whose cif number is generated
    When user creates new application for "<ProductType>" with existing customer
    And user reads data from the excel file "<ExistingApplicantInfo>" under sheet "<ExistingApplicantInfo_home>" and row <ExistingApplicantInfo_rowNum>
    And user search the customer with "<var>" whose cif number is generated
    Then proper error message should be display
    Examples:
      | var                 | ProductType   | ExistingApplicantInfo      | ExistingApplicantInfo_home | ExistingApplicantInfo_rowNum |
      | Customer Name       | Home Loan     | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Date of Birth       | Home Loan     | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Identification Type | Home Loan     | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Id Number           | Home Loan     | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Customer Name       | Auto Loan     | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Date of Birth       | Auto Loan     | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Identification Type | Auto Loan     | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Id Number           | Auto Loan     | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Customer Name       | Personal Loan | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Date of Birth       | Personal Loan | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Identification Type | Personal Loan | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Id Number           | Personal Loan | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Customer Name       | <ProductType> | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Date of Birth       | <ProductType> | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Identification Type | <ProductType> | ExistingApplicantInfo.xlsx | home                       | 0                            |
      | Id Number           | <ProductType> | ExistingApplicantInfo.xlsx | home                       | 0                            |

