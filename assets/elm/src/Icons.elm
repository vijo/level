module Icons
    exposing
        ( Toggle(..)
        , arrowLeft
        , arrowRight
        , arrowUpRight
        , bookmark
        , open
        , closed
        , comment
        , heart
        , lock
        , logo
        , sync
        , search
        , unlock
        )

import Html exposing (Html)
import Html.Attributes exposing (class)
import View.Helpers exposing (injectHtml)


type Toggle
    = On
    | Off


toHtml : String -> Html msg
toHtml body =
    injectHtml [ class "flex items-center" ] body


arrowLeft : Html msg
arrowLeft =
    toHtml
        """
        <svg width="16px" height="14px" viewBox="0 0 16 14" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <!-- Generator: Sketch 50.2 (55047) - http://www.bohemiancoding.com/sketch -->
            <desc>Created with Sketch.</desc>
            <defs></defs>
            <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
                <g id="arrow-left" transform="translate(1.000000, 1.000000)" stroke="#8A98A5" stroke-width="2">
                    <path d="M14,6 L0,6" id="Shape"></path>
                    <polyline id="Shape" points="6 12 0 6 6 0"></polyline>
                </g>
            </g>
        </svg>
        """


arrowRight : Html msg
arrowRight =
    toHtml
        """
        <svg width="16px" height="16px" viewBox="0 0 16 16" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <!-- Generator: Sketch 50.2 (55047) - http://www.bohemiancoding.com/sketch -->
            <desc>Created with Sketch.</desc>
            <defs></defs>
            <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
                <g id="arrow-right" transform="translate(1.000000, 1.000000)" stroke="#8A98A5" stroke-width="2">
                    <path d="M0,7 L14,7" id="Shape"></path>
                    <polyline id="Shape" points="7 0 14 7 7 14"></polyline>
                </g>
            </g>
        </svg>
        """


arrowUpRight : Html msg
arrowUpRight =
    toHtml
        """
        <svg width="10px" height="10px" viewBox="0 0 10 10" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <!-- Generator: Sketch 50.2 (55047) - http://www.bohemiancoding.com/sketch -->
            <desc>Created with Sketch.</desc>
            <defs></defs>
            <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
                <g id="arrow-up-right" transform="translate(1.000000, 1.000000)" stroke="#8A98A5" stroke-width="2">
                    <path d="M0,8 L8,0" id="Shape"></path>
                    <polyline id="Shape" points="0 0 8 0 8 8"></polyline>
                </g>
            </g>
        </svg>
        """


bookmark : Toggle -> Html msg
bookmark toggle =
    case toggle of
        Off ->
            toHtml
                """
                <svg width="16px" height="20px" viewBox="0 0 16 20" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <!-- Generator: Sketch 50.2 (55047) - http://www.bohemiancoding.com/sketch -->
                    <desc>Created with Sketch.</desc>
                    <defs></defs>
                    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
                        <g id="bookmark" transform="translate(1.000000, 1.000000)" fill="#E2E6E8" stroke="#E2E6E8" stroke-width="2">
                            <path d="M14,18 L7,13 L0,18 L0,2 C0,0.8954305 0.8954305,0 2,0 L12,0 C13.1045695,0 14,0.8954305 14,2 L14,18 Z" id="Shape"></path>
                        </g>
                    </g>
                </svg>
                """

        On ->
            toHtml
                """
                <svg width="16px" height="20px" viewBox="0 0 16 20" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <!-- Generator: Sketch 50.2 (55047) - http://www.bohemiancoding.com/sketch -->
                    <desc>Created with Sketch.</desc>
                    <defs></defs>
                    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
                        <g id="bookmark-copy" transform="translate(1.000000, 1.000000)" fill="#13C1D5" stroke="#13C1D5" stroke-width="2">
                            <path d="M14,18 L7,13 L0,18 L0,2 C0,0.8954305 0.8954305,0 2,0 L12,0 C13.1045695,0 14,0.8954305 14,2 L14,18 Z" id="Shape"></path>
                        </g>
                    </g>
                </svg>
                """


{-| Using the `circle` feather icon.
-}
open : Html msg
open =
    toHtml
        """
        <svg width="22px" height="22px" viewBox="0 0 22 22" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <!-- Generator: Sketch 50.2 (55047) - http://www.bohemiancoding.com/sketch -->
            <desc>Created with Sketch.</desc>
            <defs></defs>
            <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
                <g id="circle" transform="translate(1.000000, 1.000000)" stroke="#11E72B" stroke-width="2">
                    <circle id="Oval" cx="10" cy="10" r="10"></circle>
                </g>
            </g>
        </svg>
        """


{-| Using the `check-circle` feather icon.
-}
closed : Html msg
closed =
    toHtml
        """
        <svg width="22px" height="22px" viewBox="0 0 22 22" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <!-- Generator: Sketch 50.2 (55047) - http://www.bohemiancoding.com/sketch -->
            <desc>Created with Sketch.</desc>
            <defs></defs>
            <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
                <g id="check-circle" transform="translate(1.000000, 0.000000)" stroke="#FF1E12" stroke-width="2">
                    <path d="M20,10.08 L20,11 C19.9974678,15.4286859 17.082294,19.328213 12.8353524,20.583901 C8.58841086,21.839589 4.02139355,20.1523121 1.61095509,16.4370663 C-0.799483376,12.7218205 -0.479136554,7.86363898 2.39827419,4.49707214 C5.27568494,1.13050531 10.0247126,0.0575252842 14.07,1.86" id="Shape"></path>
                    <polyline id="Shape" points="20 3 10 13.01 7 10.01"></polyline>
                </g>
            </g>
        </svg>
        """


comment : Html msg
comment =
    toHtml
        """
        <svg width="16px" height="16px" viewBox="0 0 16 16" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <!-- Generator: Sketch 50.2 (55047) - http://www.bohemiancoding.com/sketch -->
            <desc>Created with Sketch.</desc>
            <defs></defs>
            <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
                <g id="message-square" transform="translate(1.000000, 1.000000)" stroke="#8A98A5" stroke-width="2">
                    <path d="M14,9.33333333 C14,10.1924429 13.3035541,10.8888889 12.4444444,10.8888889 L3.11111111,10.8888889 L0,14 L0,1.55555556 C0,0.696445945 0.696445945,0 1.55555556,0 L12.4444444,0 C13.3035541,0 14,0.696445945 14,1.55555556 L14,9.33333333 Z" id="Shape"></path>
                </g>
            </g>
        </svg>
        """


heart : Html msg
heart =
    toHtml
        """
        <svg width="20px" height="17px" viewBox="0 0 20 17" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <!-- Generator: Sketch 50.2 (55047) - http://www.bohemiancoding.com/sketch -->
            <desc>Created with Sketch.</desc>
            <defs></defs>
            <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
                <g id="heart" transform="translate(1.000000, 1.000000)" stroke="#8A98A5" stroke-width="2">
                    <path d="M15.7837833,1.2894605 C14.939809,0.463853671 13.7948962,-7.10542736e-16 12.601056,0 C11.4072158,3.55271368e-16 10.2623031,0.463853671 9.41832875,1.2894605 L8.55105603,2.1374605 L7.6837833,1.2894605 C5.92601156,-0.429249601 3.07610052,-0.42924958 1.3183288,1.28946054 C-0.439442915,3.00817067 -0.439442937,5.79475035 1.31832875,7.5134605 L2.18560148,8.3614605 L8.55105603,14.5854605 L14.9165106,8.3614605 L15.7837833,7.5134605 C16.6281539,6.68824114 17.1025497,5.56877092 17.1025497,4.4014605 C17.1025497,3.23415007 16.6281539,2.11467986 15.7837833,1.2894605 Z" id="Shape"></path>
                </g>
            </g>
        </svg>
        """


lock : Html msg
lock =
    toHtml
        """
        <svg width="16px" height="18px" viewBox="0 0 16 18" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <!-- Generator: Sketch 50.2 (55047) - http://www.bohemiancoding.com/sketch -->
            <desc>Created with Sketch.</desc>
            <defs></defs>
            <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
                <g id="lock" transform="translate(1.000000, 1.000000)" stroke="#8A98A5" stroke-width="2">
                    <rect id="Rectangle-path" fill="#8A98A5" x="0" y="7.2" width="14" height="8.8" rx="2"></rect>
                    <path d="M3.11111111,7.2 L3.11111111,4 C3.11111111,1.790861 4.85222597,1.24344979e-15 7,8.8817842e-16 C9.14777403,1.77635684e-16 10.8888889,1.790861 10.8888889,4 L10.8888889,7.2" id="Shape"></path>
                </g>
            </g>
        </svg>
        """


logo : Html msg
logo =
    toHtml
        """
        <svg width="99px" height="20px" viewBox="0 0 99 20" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <title>Logo</title>
            <defs></defs>
            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                <g transform="translate(-661.000000, -131.000000)">
                    <g transform="translate(661.000000, 131.000000)">
                        <path d="M7,1 L23,1 C24.1045695,1 25,1.8954305 25,3 C25,4.1045695 24.1045695,5 23,5 L7,5 C5.8954305,5 5,4.1045695 5,3 C5,1.8954305 5.8954305,1 7,1 Z M12,8 L28,8 C29.1045695,8 30,8.8954305 30,10 C30,11.1045695 29.1045695,12 28,12 L12,12 C10.8954305,12 10,11.1045695 10,10 C10,8.8954305 10.8954305,8 12,8 Z M2,15 L18,15 C19.1045695,15 20,15.8954305 20,17 C20,18.1045695 19.1045695,19 18,19 L2,19 C0.8954305,19 1.3527075e-16,18.1045695 0,17 C-1.3527075e-16,15.8954305 0.8954305,15 2,15 Z" fill="#12C1D5"></path>
                        <path d="M38,17.8074866 L38,2.03208556 C38,0.909090909 38.9144621,0 40.0440917,0 C41.1737213,0 42.0881834,0.909090909 42.0881834,2.03208556 L42.0881834,17.8074866 C42.0881834,18.9304813 41.1737213,19.8395722 40.0440917,19.8395722 C38.9144621,19.8395722 38,18.9304813 38,17.8074866 Z M57.7685185,18.2620321 C56.5044092,19.3315508 54.8637566,20 52.765873,20 C48.4356261,20 45.2350088,16.9786096 45.2350088,12.5935829 L45.2350088,12.540107 C45.2350088,8.44919786 48.1666667,5.0802139 52.3624339,5.0802139 C57.1768078,5.0802139 59.3015873,9.01069519 59.3015873,11.9786096 C59.3015873,13.1550802 58.4678131,13.9304813 57.3919753,13.9304813 L49.2962963,13.9304813 C49.6997354,15.7754011 50.9907407,16.7379679 52.8196649,16.7379679 C53.9492945,16.7379679 54.8906526,16.3903743 55.7244268,15.7754011 C56.0202822,15.5614973 56.2892416,15.4545455 56.7195767,15.4545455 C57.6340388,15.4545455 58.3064374,16.1497326 58.3064374,17.0588235 C58.3064374,17.5935829 58.0643739,17.9946524 57.7685185,18.2620321 Z M49.2425044,11.3903743 L55.4016755,11.3903743 C55.159612,9.57219251 54.0837743,8.34224599 52.3624339,8.34224599 C50.6679894,8.34224599 49.5652557,9.54545455 49.2425044,11.3903743 Z M70.9206349,18.2085561 C70.4634039,19.2513369 69.7103175,19.973262 68.6075838,19.973262 L68.3924162,19.973262 C67.2896825,19.973262 66.5365961,19.2780749 66.0793651,18.2085561 L61.6684303,8.07486631 C61.5608466,7.80748663 61.4532628,7.45989305 61.4532628,7.0855615 C61.4532628,6.12299465 62.3408289,5.18716578 63.4435626,5.18716578 C64.5462963,5.18716578 65.1380071,5.80213904 65.4338624,6.63101604 L68.5268959,14.9465241 L71.6737213,6.57754011 C71.9426808,5.88235294 72.5074956,5.18716578 73.5833333,5.18716578 C74.6591711,5.18716578 75.5467372,6.01604278 75.5467372,7.11229947 C75.5467372,7.45989305 75.4122575,7.88770053 75.3315697,8.07486631 L70.9206349,18.2085561 Z M90.0705467,18.2620321 C88.8064374,19.3315508 87.1657848,20 85.0679012,20 C80.7376543,20 77.537037,16.9786096 77.537037,12.5935829 L77.537037,12.540107 C77.537037,8.44919786 80.4686949,5.0802139 84.6644621,5.0802139 C89.478836,5.0802139 91.6036155,9.01069519 91.6036155,11.9786096 C91.6036155,13.1550802 90.7698413,13.9304813 89.6940035,13.9304813 L81.5983245,13.9304813 C82.0017637,15.7754011 83.292769,16.7379679 85.1216931,16.7379679 C86.2513228,16.7379679 87.1926808,16.3903743 88.026455,15.7754011 C88.3223104,15.5614973 88.5912698,15.4545455 89.0216049,15.4545455 C89.936067,15.4545455 90.6084656,16.1497326 90.6084656,17.0588235 C90.6084656,17.5935829 90.3664021,17.9946524 90.0705467,18.2620321 Z M81.5445326,11.3903743 L87.7037037,11.3903743 C87.4616402,9.57219251 86.3858025,8.34224599 84.6644621,8.34224599 C82.9700176,8.34224599 81.867284,9.54545455 81.5445326,11.3903743 Z M94.9118166,17.8074866 L94.9118166,2.03208556 C94.9118166,0.909090909 95.8262787,0 96.9559083,0 C98.0855379,0 99,0.909090909 99,2.03208556 L99,17.8074866 C99,18.9304813 98.0855379,19.8395722 96.9559083,19.8395722 C95.8262787,19.8395722 94.9118166,18.9304813 94.9118166,17.8074866 Z" id="level" fill="#22384C"></path>
                    </g>
                </g>
            </g>
        </svg>
        """


sync : Html msg
sync =
    toHtml
        """
        <svg width="20px" height="17px" viewBox="0 0 20 17" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <!-- Generator: Sketch 50.2 (55047) - http://www.bohemiancoding.com/sketch -->
            <desc>Created with Sketch.</desc>
            <defs></defs>
            <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
                <g id="refresh-cw" transform="translate(1.000000, 1.000000)" stroke="#8A98A5" stroke-width="2">
                    <polyline id="Shape" points="17.6 0.799999979 17.6 5.59999985 12.8 5.59999985"></polyline>
                    <polyline id="Shape" points="0 13.5999996 0 8.79999977 4.8 8.79999977"></polyline>
                    <path d="M2.008,4.79999987 C2.83270531,2.46944926 4.79541373,0.724974577 7.20662937,0.179406607 C9.61784502,-0.366161362 12.1403527,0.363476577 13.888,2.11199994 L17.6,5.59999985 M0,8.79999977 L3.712,12.2879997 C5.45964733,14.036523 7.98215498,14.766161 10.3933706,14.220593 C12.8045863,13.675025 14.7672947,11.9305504 15.592,9.59999975" id="Shape"></path>
                </g>
            </g>
        </svg>
        """


search : Html msg
search =
    toHtml
        """
        <svg width="20px" height="20px" viewBox="0 0 20 20" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <!-- Generator: Sketch 50.2 (55047) - http://www.bohemiancoding.com/sketch -->
            <desc>Created with Sketch.</desc>
            <defs></defs>
            <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
                <g id="search" transform="translate(1.000000, 1.000000)" stroke="#8A98A5" stroke-width="2">
                    <circle id="Oval" cx="8" cy="8" r="8"></circle>
                    <path d="M18,18 L13.65,13.65" id="Shape"></path>
                </g>
            </g>
        </svg>
        """


unlock : Html msg
unlock =
    toHtml
        """
        <svg width="16px" height="20px" viewBox="0 0 16 20" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <!-- Generator: Sketch 50.2 (55047) - http://www.bohemiancoding.com/sketch -->
            <desc>Created with Sketch.</desc>
            <defs></defs>
            <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
                <g id="unlock" transform="translate(1.000000, 1.000000)" stroke="#8A98A5" stroke-width="2">
                    <rect id="Rectangle-path" x="0" y="8.12030075" width="14" height="8.93233083" rx="2"></rect>
                    <path d="M3.11110911,8.12030075 L3.11111111,4.87218045 C3.10910319,2.7862656 4.62135513,1.03813725 6.60916974,0.828505399 C8.59698434,0.61887355 10.4135331,2.01595173 10.8111111,4.06015038" id="Shape"></path>
                </g>
            </g>
        </svg>
        """
