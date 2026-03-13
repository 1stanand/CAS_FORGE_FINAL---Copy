@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedSecCollateral
@ReleaseSecCollateralM5

#${ApplicantType:["indiv","nonindiv"]}

Feature: Internal Collateral Property Search and Link

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page

#Internal Collateral Search and link--------DONE--------

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-3141: Provision to search Property as internal collateral and link of <ApplicantType> on <ProductType> on <ApplicationStage> at <Collateral_collateralSearch_rowNum>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Collateral Page
    And user searches for an existing collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_collateralSearch>" and row <Collateral_collateralSearch_rowNum>
    When user enters parameters to search collateral
    And clicks on search
    And user sees the list of collaterals available in CMS as per the parameters entered
    Then user should be able to link it to the application
    @ImplementedBy-aman.verma
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | ProductType   | ApplicationStage   | key | Category | ApplicantType   |
      | collateral.xlsx | collateral_search           | 3035                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3036                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3037                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3038                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3039                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3040                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3041                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3042                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3043                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3044                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3045                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3046                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3047                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3048                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3049                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3050                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3051                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3052                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3053                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3054                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3055                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3056                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3057                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3058                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3059                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3060                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3061                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3062                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3063                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3064                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3065                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3066                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3067                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3068                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3069                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3070                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3071                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3072                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3073                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3074                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3075                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3076                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3077                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3078                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3079                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3080                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3081                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3082                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3083                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3084                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3085                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3086                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3087                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3088                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3089                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3090                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3091                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3092                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3093                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3094                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3095                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3096                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3097                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3098                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3099                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | ProductType   | ApplicationStage   | key | Category   | ApplicantType   |
      | collateral.xlsx | collateral_search           | 3035                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3036                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3037                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3038                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3039                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3040                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3041                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3042                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3043                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3044                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3045                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3046                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3047                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3048                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3049                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3050                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3051                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3052                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3053                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3054                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3055                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3056                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3057                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3058                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3059                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3060                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3061                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3062                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3063                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3064                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3065                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3066                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3067                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3068                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3069                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3070                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3071                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3072                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3073                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3074                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3075                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3076                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3077                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3078                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3079                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3080                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3081                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3082                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3083                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3084                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3085                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3086                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3087                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3088                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3089                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3090                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3091                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3092                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3093                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3094                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3095                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3096                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3097                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3098                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3099                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | ProductType   | ApplicationStage   | key | Category | ApplicantType   |
      | collateral.xlsx | collateral_search           | 3035                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3036                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3037                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3038                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3039                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3040                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3041                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3042                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3043                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3044                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3045                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3046                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3047                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3048                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3049                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3050                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3051                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3052                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3053                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3054                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3055                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3056                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3057                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3058                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3059                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3060                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3061                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3062                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3063                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3064                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3065                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3066                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3067                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3068                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3069                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3070                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3071                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3072                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3073                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3074                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3075                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3076                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3077                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3078                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3079                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3080                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3081                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3082                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3083                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3084                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3085                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3086                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3087                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3088                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3089                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3090                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3091                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3092                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3093                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3094                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3095                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3096                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3097                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3098                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | collateral_search           | 3099                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #FeatureID-ACAUTOCAS-249
  Scenario Outline: ACAUTOCAS-11617:  Internal search and link Property as collateral to reconcile the copied data <ApplicantType> applicant at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Sheet>" and row <Collateral_Sheet_RowNo>
    And user add "<CollateralSubType>" collateral with mandatory fields
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data in context
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Sheet>" and row <Collateral_Sheet_RowNo>
    When user searches for an existing internal collateral using Global Collateral Number
    And user links the collateral with the application
    Then user should be able to reconcile the data for "<CollateralSubType>" collateral successfully
    @ImplementedBy-aman.verma
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralSubType                   | CollateralWB    | Collateral_Sheet | Collateral_Sheet_RowNo | ProductType   | SecondaryApplicationStage | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Ready Property                      | collateral.xlsx | default          | 95                     | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Builder Property Under Construction | collateral.xlsx | builder_details  | 22                     | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Construction On Land                | collateral.xlsx | default          | 97                     | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Plot Plus Self Construction         | collateral.xlsx | default          | 163                    | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
    

  #FeatureID-ACAUTOCAS-249
  Scenario Outline: ACAUTOCAS-11618:  Internal search and link Property as collateral to reconcile the copied CERSAI data <ApplicantType> applicant at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Sheet>" and row <Collateral_Sheet_RowNo>
    And user add "<CollateralSubType>" collateral with mandatory fields
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data in context
    And user edits the recently added collateral
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user saves the CERSAI data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user searches for an existing internal collateral using Global Collateral Number
    And user links the collateral with the application
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    Then user should be able to reconcile the data for CERSAI successfully
    @ImplementedBy-aman.verma
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralSubType                   | CollateralWB    | Collateral_Sheet | Collateral_Sheet_RowNo | ProductType   | SecondaryApplicationStage | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum |
      | Ready Property                      | collateral.xlsx | default          | 95                     | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | cersai_details           | 94                              |
      | Builder Property Under Construction | collateral.xlsx | builder_details  | 22                     | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | cersai_details           | 94                              |
      | Construction On Land                | collateral.xlsx | default          | 97                     | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | cersai_details           | 94                              |
      | Plot Plus Self Construction         | collateral.xlsx | default          | 163                    | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | cersai_details           | 94                              |
    
  #FeatureID-ACAUTOCAS-249
  Scenario Outline: ACAUTOCAS-11619:  Internal search and link Property as collateral to reconcile the copied CERSAI security interest data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Sheet>" and row <Collateral_Sheet_RowNo>
    And user add "<CollateralSubType>" collateral with mandatory fields
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data in context
    And user edits the recently added collateral
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_securityInterestDetails_rowNum>
    And user views the section Security Interest Details
    And user enters Security Interest Details
    And user saves the CERSAI data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user searches for an existing internal collateral using Global Collateral Number
    And user links the collateral with the application
    And user navigates to the CERSAI page
    And user views the section Security Interest Details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_securityInterestDetails_rowNum>
    Then user should be able to reconcile the data for CERSAI security interest data successfully
    @ImplementedBy-aman.verma
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralSubType                   | CollateralWB    | Collateral_Sheet | Collateral_Sheet_RowNo | ProductType   | SecondaryApplicationStage | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | Collateral_securityInterestDetails_rowNum |
      | Ready Property                      | collateral.xlsx | default          | 95                     | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | cersai_details           | 94                              | 194                                       |
      | Builder Property Under Construction | collateral.xlsx | builder_details  | 22                     | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | cersai_details           | 94                              | 194                                       |
      | Construction On Land                | collateral.xlsx | default          | 97                     | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | cersai_details           | 94                              | 194                                       |
      | Plot Plus Self Construction         | collateral.xlsx | default          | 163                    | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | cersai_details           | 94                              | 194                                       |
    