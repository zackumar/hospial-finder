import 'package:hospital_finder_app/core/services/hospital_service.dart';

class HospitalServiceMock extends HospitalService {
  @override
  Future<dynamic> getHospitalNearby(double latitude, double longitude) async {
    return {
      "html_attributions": [],
      "next_page_token":
          "ATtYBwJHlcOGbQTxPw54EYzDcW4Ndpa2YRudngqLrxju3rrxG6vf9tP8M6h1UhkByhtdAPfAwhwO2_07r8mzxeO1YaKby5KC5gl8ik9Vj0GjFtAiz1mVyfPftAZp5V9an_SmFQpmTIfTdrhXCe1SibZdDoIfe5smNIwZZJ4Zj1ZA0sEwq8BO6UdWbIafeWFGaayy7RjrnBBTQgvK9R7DOb8NIQP4j1-6lWhoWgI0Yh-sMigXxOxvPhtBC4exqV701LI47ZdDI2NL7VkTOIDYi9EL1v8SEf1pZVu-bvbR_cMNRNJWkEvo3SZtLDwsa5Jb5djliNrBn_uJOr9KmTBGxAaaP-TEdXfGPA219hFo8cITJTRQO3brq21fZEu2hI_gACz34FoQvgWoQOLNfncU_PG90TzJb1HJ7U9l3GXd0f48XsZ-a5oFu9KN-ErPNg",
      "results": [
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.6162229, "lng": -98.4743864},
            "viewport": {
              "northeast": {"lat": 29.61809825, "lng": -98.4710803},
              "southwest": {"lat": 29.61335085000001, "lng": -98.4788167}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name": "Methodist Hospital Stone Oak",
          "opening_hours": {"open_now": true},
          "photos": [
            {
              "height": 540,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/107905941882752735152\">Methodist Hospital Stone Oak</a>"
              ],
              "photo_reference":
                  "ATtYBwJ3H0bE7espomXjAuVCEkICnjOXz4D5r4b37QOv2mNLUA-CWRtSJMVQn7GdOu1T37oQZJzeiJpBIZ48jsupA93l_06HCo0eprD5MtAp9Crt6K1pRfh-PV5jvB1OmUKjUe4xRc3li0WkF41EOD2TR8EtAX4leBC2DIYISV8RQ8Y9O2i6",
              "width": 960
            }
          ],
          "place_id": "ChIJz4q-ivmJXIYRf4bSGQbQEWI",
          "plus_code": {
            "compound_code": "JG8G+F6 San Antonio, TX, USA",
            "global_code": "76X3JG8G+F6"
          },
          "rating": 4,
          "reference": "ChIJz4q-ivmJXIYRf4bSGQbQEWI",
          "scope": "GOOGLE",
          "types": ["hospital", "health", "point_of_interest", "establishment"],
          "user_ratings_total": 1166,
          "vicinity": "1139 East Sonterra Boulevard, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.4411887, "lng": -98.4908561},
            "viewport": {
              "northeast": {"lat": 29.4426166802915, "lng": -98.48975026970851},
              "southwest": {"lat": 29.4399187197085, "lng": -98.49244823029152}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name": "Methodist Hospital Metropolitan",
          "opening_hours": {"open_now": true},
          "photos": [
            {
              "height": 540,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/100894008726160922073\">Methodist Hospital Metropolitan</a>"
              ],
              "photo_reference":
                  "ATtYBwJn2XrbeoGPduzZGqVRtwszkn5cIY7l5A0pZIzzLJe_2dPoQFURxp5rEkcmr8BFRJCAIulfSEeiRFYKVa3tH8vMFitR6La0VPN-rLwcVABPGbAVDDZliMrj-21a-b2K4tH1v3Y52Y_tAYY1IehpSf_PJ0DpqNJiYNtRH4gcTp8DftTy",
              "width": 960
            }
          ],
          "place_id": "ChIJwQx6wltfXIYRC2NcRqeK2m0",
          "plus_code": {
            "compound_code": "CGR5+FM San Antonio, TX, USA",
            "global_code": "76X3CGR5+FM"
          },
          "rating": 4,
          "reference": "ChIJwQx6wltfXIYRC2NcRqeK2m0",
          "scope": "GOOGLE",
          "types": ["hospital", "health", "point_of_interest", "establishment"],
          "user_ratings_total": 772,
          "vicinity": "1310 McCullough Avenue, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.5195482, "lng": -98.42878109999999},
            "viewport": {
              "northeast": {"lat": 29.5208808802915, "lng": -98.42731911970849},
              "southwest": {"lat": 29.5181829197085, "lng": -98.43001708029151}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name": "Northeast Baptist Hospital",
          "opening_hours": {"open_now": true},
          "photos": [
            {
              "height": 1080,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/111445082742401794327\">Wil Hardiman</a>"
              ],
              "photo_reference":
                  "ATtYBwLjZkO3eclFndKsmFx95j7K1AkU4NX0OXGzk5tJ_ujTfPM-Mfyz6pskbn4ce3vrDjffRHqhuH04HSg1l_DT-S-2DoTBOj84b3LGd4tAAZ0bKZeS-QmPqKMegilvi-DUkiRhs__Z8gG236BLljkC-teU4yAu2aWKVmG1S9Cb_A6WOAyh",
              "width": 1920
            }
          ],
          "place_id": "ChIJB-KoZ830XIYRLPosZz_UzOA",
          "plus_code": {
            "compound_code": "GH9C+RF San Antonio, TX, USA",
            "global_code": "76X3GH9C+RF"
          },
          "rating": 2.6,
          "reference": "ChIJB-KoZ830XIYRLPosZz_UzOA",
          "scope": "GOOGLE",
          "types": ["hospital", "health", "point_of_interest", "establishment"],
          "user_ratings_total": 416,
          "vicinity": "8811 Village Drive, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.4661305, "lng": -98.6965548},
            "viewport": {
              "northeast": {"lat": 29.4676126802915, "lng": -98.69525706970849},
              "southwest": {"lat": 29.4649147197085, "lng": -98.6979550302915}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name": "CHRISTUS Santa Rosa Hospital Westover Hills",
          "opening_hours": {"open_now": true},
          "photos": [
            {
              "height": 1192,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/116731751450636195047\">CHRISTUS Santa Rosa Hospital Westover Hills</a>"
              ],
              "photo_reference":
                  "ATtYBwISzxCCqdOw6I1pkj5-cJSL3Zeefu8nX0i3-z1gfYkYYi9ga4TPnvCdCL71XxOEaiV35VHW6tYM1HjknY1ymLsndwEkFzo_bk6YS5zHirpbdDT-wIitaDI4HpTEja3zcKjMRbJB9wznzSdIlBKMXJqraTIBU_M77w7ubxXBRS9p55F6",
              "width": 2119
            }
          ],
          "place_id": "ChIJPX3uUvpCXIYR3b9-qGIAw3A",
          "plus_code": {
            "compound_code": "F883+F9 San Antonio, TX, USA",
            "global_code": "76X3F883+F9"
          },
          "rating": 2.2,
          "reference": "ChIJPX3uUvpCXIYR3b9-qGIAw3A",
          "scope": "GOOGLE",
          "types": ["hospital", "health", "point_of_interest", "establishment"],
          "user_ratings_total": 613,
          "vicinity": "11212 Texas 151, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.344609, "lng": -98.438345},
            "viewport": {
              "northeast": {"lat": 29.3478307, "lng": -98.4357002},
              "southwest": {"lat": 29.3414695, "lng": -98.4405038}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name": "Mission Trail Baptist Hospital",
          "opening_hours": {"open_now": true},
          "photos": [
            {
              "height": 2209,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/118133385311441164478\">Mission Trail Baptist Hospital</a>"
              ],
              "photo_reference":
                  "ATtYBwI6PPuAryC4EJJZd6CkgmhZgcnYGgYrs0R84-GfcUwu0w5MaxbJbZvJXrYxd7ZECLsQMPI9gxXBiDciJlBnHTBfhwFZNJlpQM8eqzaw_7DCYrmF7IB6ysAQRSCza9l-CtSz5jJfciYeUg1kOxHiig0I6JeIpZ2xw22H5SBnhX8mQ5Xq",
              "width": 3923
            }
          ],
          "place_id": "ChIJaa1J5Xj3XIYRb9AmDY0sJck",
          "plus_code": {
            "compound_code": "8HV6+RM San Antonio, TX, USA",
            "global_code": "76X38HV6+RM"
          },
          "rating": 2.3,
          "reference": "ChIJaa1J5Xj3XIYRb9AmDY0sJck",
          "scope": "GOOGLE",
          "types": ["hospital", "health", "point_of_interest", "establishment"],
          "user_ratings_total": 441,
          "vicinity": "3333 Research Plaza, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.4281027, "lng": -98.49826729999999},
            "viewport": {
              "northeast": {"lat": 29.4294759802915, "lng": -98.4970226697085},
              "southwest": {"lat": 29.4267780197085, "lng": -98.49972063029151}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name": "The Children's Hospital of San Antonio",
          "opening_hours": {"open_now": true},
          "photos": [
            {
              "height": 3188,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/115077972503370258278\">The Children&#39;s Hospital of San Antonio</a>"
              ],
              "photo_reference":
                  "ATtYBwIsT_b18IHRdlN-j8LlBWkp0mpn1GVLKzForKx8wUQgPgKS1iH0_72hA7Nafkkr4rUhPFuOEY6ejSnv8gFc3M8Stznndefcou5mD-u5Y7bfjZ1PG-RdExqcqIEPWkgdwV_jQCrL_hticBwNJnbVNMWZcr70t7bgV_3WWzQcGjdQ9Tmb",
              "width": 4125
            }
          ],
          "place_id": "ChIJF8VlUExfXIYRySbpME41SrQ",
          "plus_code": {
            "compound_code": "CGH2+6M San Antonio, TX, USA",
            "global_code": "76X3CGH2+6M"
          },
          "rating": 3.6,
          "reference": "ChIJF8VlUExfXIYRySbpME41SrQ",
          "scope": "GOOGLE",
          "types": [
            "hospital",
            "doctor",
            "health",
            "point_of_interest",
            "establishment"
          ],
          "user_ratings_total": 298,
          "vicinity": "333 North Santa Rosa Street, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.5525363, "lng": -98.3479837},
            "viewport": {
              "northeast": {
                "lat": 29.55360833029149,
                "lng": -98.34657506970849
              },
              "southwest": {"lat": 29.55091036970849, "lng": -98.3492730302915}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name": "Methodist Hospital Northeast",
          "opening_hours": {"open_now": true},
          "photos": [
            {
              "height": 540,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/102250483591927051058\">Methodist Hospital Northeast</a>"
              ],
              "photo_reference":
                  "ATtYBwIZvdSSIn2_keXsPRkJYBkJt5x4252u1xFddmVQfx3k7EA8ynwNvW2LOUA-BBAYb8a3oPCIihIZXM7vtQoPZ2Z_77Jo7XSXQbMwlkfxWDept2b5ylDYHLDH-7ofB7OtpCBUJUA3E4Y6dwJ4BPL9HQoQ1DcqmzbMMnapjbRxgrgX1lE",
              "width": 960
            }
          ],
          "place_id": "ChIJIX6Y2x6NXIYR8Gnp_vLiCF0",
          "plus_code": {
            "compound_code": "HM32+2R Live Oak, TX, USA",
            "global_code": "76X3HM32+2R"
          },
          "rating": 3.5,
          "reference": "ChIJIX6Y2x6NXIYR8Gnp_vLiCF0",
          "scope": "GOOGLE",
          "types": ["hospital", "health", "point_of_interest", "establishment"],
          "user_ratings_total": 960,
          "vicinity": "12412 Judson Road, Live Oak"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.4383672, "lng": -98.49067269999999},
            "viewport": {
              "northeast": {"lat": 29.4396375802915, "lng": -98.48945636970848},
              "southwest": {"lat": 29.4369396197085, "lng": -98.4921543302915}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name":
              "Methodist Physicians South Texas Cardiology Specialists- Metropolitan Gateway",
          "opening_hours": {"open_now": false},
          "photos": [
            {
              "height": 3024,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/108374625051326362193\">W.E. Marcin</a>"
              ],
              "photo_reference":
                  "ATtYBwLBInHKaLHd-OfgzWV-LaG4AozP1MNRrY3yB4swZPQ9TLpj1NkpE7WT5wpMRo8TRU1YLV3gEJ2-_2fWi8vzbpBr9XDF1-GHmS84-QruDSCAo2aIssKSe-qQC6LnS99emgNB9-_O6NwjQYhSZhob3PUBd8ZNNDy0NFn-OFi4fAQVMQJH",
              "width": 4032
            }
          ],
          "place_id": "ChIJqXbOn1tfXIYRv6Z2S1e8Rr0",
          "plus_code": {
            "compound_code": "CGQ5+8P San Antonio, TX, USA",
            "global_code": "76X3CGQ5+8P"
          },
          "rating": 4.7,
          "reference": "ChIJqXbOn1tfXIYRv6Z2S1e8Rr0",
          "scope": "GOOGLE",
          "types": ["hospital", "health", "point_of_interest", "establishment"],
          "user_ratings_total": 129,
          "vicinity": "1100 McCullough Avenue Suite 300, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.3779193, "lng": -98.503885},
            "viewport": {
              "northeast": {"lat": 29.3793724802915, "lng": -98.50264651970849},
              "southwest": {"lat": 29.3766745197085, "lng": -98.50534448029151}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name": "Gonzaba Medical Group – Main Medical Center",
          "opening_hours": {"open_now": false},
          "photos": [
            {
              "height": 808,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/110377295094284918814\">Gonzaba Medical Group – Main Medical Center</a>"
              ],
              "photo_reference":
                  "ATtYBwJk3s6zWmep92MdvWoO2KWTUlcVJvHCi4mgEthiwVEK0qu9ucbyPNSmSjmtJ_uaBYAz9TnnvSyLhGq82IxfpGRgu8ZvrWTlVLdYZCDoSxneir5ORb8VqC_05N8_WQYIUds9Kk4FiyncQ2sYQu77gUmJ7Xu0mnTzvInUtA52I1qiAaiM",
              "width": 1440
            }
          ],
          "place_id": "ChIJR-H2LmBYXIYRENuOf417ijs",
          "plus_code": {
            "compound_code": "9FHW+5C San Antonio, TX, USA",
            "global_code": "76X39FHW+5C"
          },
          "rating": 4.7,
          "reference": "ChIJR-H2LmBYXIYRENuOf417ijs",
          "scope": "GOOGLE",
          "types": ["hospital", "health", "point_of_interest", "establishment"],
          "user_ratings_total": 1029,
          "vicinity": "720 Pleasanton Road, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.4899442, "lng": -98.5476395},
            "viewport": {
              "northeast": {"lat": 29.4916632802915, "lng": -98.54613106970849},
              "southwest": {"lat": 29.4889653197085, "lng": -98.5488290302915}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name": "Methodist Hospital Texsan",
          "opening_hours": {"open_now": true},
          "photos": [
            {
              "height": 270,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/107544414515683635330\">Methodist Hospital Texsan</a>"
              ],
              "photo_reference":
                  "ATtYBwJA8feCcFrNlvq4tLSfHj24kFdvBLSYQ4fai8j0mA9gqTJEmpi6hujiIC52U9YZJ6KBJNw2HwOplGoVPvmS9EbCwrQqFtPbv2cahDtQk2mJ5udsa_a5524H1uTsabbxe_5f0XVw8kx4GvS_UUDGghUSepeh33vKVDTOW51uCeifiptI",
              "width": 480
            }
          ],
          "place_id": "ChIJ78OwUz5eXIYRISSC0_-G_8g",
          "plus_code": {
            "compound_code": "FFQ2+XW San Antonio, TX, USA",
            "global_code": "76X3FFQ2+XW"
          },
          "rating": 4.3,
          "reference": "ChIJ78OwUz5eXIYRISSC0_-G_8g",
          "scope": "GOOGLE",
          "types": ["hospital", "health", "point_of_interest", "establishment"],
          "user_ratings_total": 440,
          "vicinity": "6700 West Interstate 10, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.5102306, "lng": -98.57278389999999},
            "viewport": {
              "northeast": {"lat": 29.5116568302915, "lng": -98.57135501970849},
              "southwest": {"lat": 29.5089588697085, "lng": -98.5740529802915}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name": "Methodist Cardiology Clinic of San Antonio - Medical Center",
          "opening_hours": {"open_now": false},
          "photos": [
            {
              "height": 270,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/110317519836775369043\">Methodist Cardiology Clinic of San Antonio - Medical Center</a>"
              ],
              "photo_reference":
                  "ATtYBwJZZ-m0v4NxDGU_ONQ13vu7RKbkPoU078tW55iz5vYsTqAPDkd_nUUrsriLcI1I5kwPgqkZWV6Rhhs44ZKuekNPDTBGGkPTJN8kis67xuzpPG5raZpnyrZUw2InenyMAiTuVTKk0RFIP0faIlwsfvaYZT2nXuNbW9yk1edeyJaFWOvb",
              "width": 480
            }
          ],
          "place_id": "ChIJ69vedgBeXIYRV9AI1FeLbRA",
          "plus_code": {
            "compound_code": "GC6G+3V San Antonio, TX, USA",
            "global_code": "76X3GC6G+3V"
          },
          "rating": 4.8,
          "reference": "ChIJ69vedgBeXIYRV9AI1FeLbRA",
          "scope": "GOOGLE",
          "types": ["hospital", "health", "point_of_interest", "establishment"],
          "user_ratings_total": 692,
          "vicinity": "4411 Medical Drive Suite 300, 120, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.3533538, "lng": -98.5451104},
            "viewport": {
              "northeast": {"lat": 29.3550177302915, "lng": -98.54371516970848},
              "southwest": {"lat": 29.3523197697085, "lng": -98.54641313029148}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name": "Texas Vista Medical Center",
          "opening_hours": {"open_now": true},
          "photos": [
            {
              "height": 314,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/103870359177479885146\">Texas Vista Medical Center</a>"
              ],
              "photo_reference":
                  "ATtYBwLUe2jweBLQUF2wfQrHo_qmvk-OOPwH7uBsDDd24PLUCYe6aBBXDadTJ30pX1DtqRLzx_i7dg6dZnm7YEM_JRJpUgznhjQmdhh_rn43PGRutBW4RCZg5nX_gvEbBz44urFG-z_bisiBSxKnftnNdFwIApEDiwUX96AeVG3wOIYAgalt",
              "width": 559
            }
          ],
          "place_id": "ChIJp2O_E79ZXIYRvbqwgIAIKNg",
          "plus_code": {
            "compound_code": "9F33+8X San Antonio, TX, USA",
            "global_code": "76X39F33+8X"
          },
          "rating": 2.8,
          "reference": "ChIJp2O_E79ZXIYRvbqwgIAIKNg",
          "scope": "GOOGLE",
          "types": ["hospital", "health", "point_of_interest", "establishment"],
          "user_ratings_total": 471,
          "vicinity": "7400 Barlite Boulevard, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.5072718, "lng": -98.57228459999999},
            "viewport": {
              "northeast": {"lat": 29.5086017302915, "lng": -98.57105926970848},
              "southwest": {"lat": 29.5059037697085, "lng": -98.57375723029149}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name": "Methodist Children's Hospital",
          "opening_hours": {"open_now": true},
          "photos": [
            {
              "height": 540,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/113894324714677861861\">Methodist Children&#39;s Hospital</a>"
              ],
              "photo_reference":
                  "ATtYBwJ7BgvP5cboUrN4s70vVkVeZHMuwMItHTYcIU83Px5VuXcyxAdFMPAgxghJyE8z52jSSoI2DBVNKsaKaJMcmS21iJOlTf8EPzpG4mByOrXZKRQe9x7aPMOgEbGwgyC-UiO58-oxsDPt5gR3xZSSVVql1At9rEtszPDP_3Q9PVGKkyvk",
              "width": 960
            }
          ],
          "place_id": "ChIJt6o3IP5dXIYRXrGzo177Bco",
          "plus_code": {
            "compound_code": "GC4H+W3 San Antonio, TX, USA",
            "global_code": "76X3GC4H+W3"
          },
          "rating": 3.2,
          "reference": "ChIJt6o3IP5dXIYRXrGzo177Bco",
          "scope": "GOOGLE",
          "types": ["hospital", "health", "point_of_interest", "establishment"],
          "user_ratings_total": 198,
          "vicinity": "Children's, 7700 Floyd Curl Drive Entrance, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.4668422, "lng": -98.69694559999999},
            "viewport": {
              "northeast": {"lat": 29.46808808029149, "lng": -98.6949395697085},
              "southwest": {"lat": 29.4653901197085, "lng": -98.6976375302915}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/generic_business-71.png",
          "name": "Urology San Antonio (Westover Hills)",
          "opening_hours": {"open_now": false},
          "photos": [
            {
              "height": 305,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/115105312421751474386\">Urology San Antonio (Westover Hills)</a>"
              ],
              "photo_reference":
                  "ATtYBwIlFVTMwPmXTPIQDvs7ZPirYpNPfxJ91qlET__sBIhNM2lWvLgHVRVJ7K5MMTUj86ZxYl7aZIYEcUZCLNwRFCHAx-khvEayBZ-3WJjEcootwZAoJu92HkhzrRLkvWs5uMeWOyJ9m2KK23HfZDcwpYigS1HibXxQA_NujDxfmzsXb0o",
              "width": 650
            }
          ],
          "place_id": "ChIJrxp0APtCXIYRLvU5twy6mLY",
          "plus_code": {
            "compound_code": "F883+P6 San Antonio, TX, USA",
            "global_code": "76X3F883+P6"
          },
          "rating": 4.6,
          "reference": "ChIJrxp0APtCXIYRLvU5twy6mLY",
          "scope": "GOOGLE",
          "types": [
            "pharmacy",
            "hospital",
            "doctor",
            "health",
            "point_of_interest",
            "store",
            "establishment"
          ],
          "user_ratings_total": 49,
          "vicinity": "11212 Texas 151 Suite 180, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.3448931, "lng": -98.4384721},
            "viewport": {
              "northeast": {"lat": 29.3455702, "lng": -98.4365218197085},
              "southwest": {"lat": 29.3428618, "lng": -98.43921978029151}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/generic_business-71.png",
          "name": "Urology San Antonio (Mission Trail)",
          "opening_hours": {"open_now": false},
          "photos": [
            {
              "height": 333,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/101991394386725925640\">Urology San Antonio (Mission Trail)</a>"
              ],
              "photo_reference":
                  "ATtYBwJyFsKUYQDhw8sbRcL008jWsDI1tWFLJWm_A3ROZFw5lgBweHD1_3rtM6fT3obIoertQYkNAM0f1-feWjf29-bekF7k2sof3GY-ddkC1gh0BEGd7twqrwMq1MnFlC1PHcBoCzRv47BAa2aKzZWn3C-L098NZIJyw6jOqsHUEIJke3nO",
              "width": 500
            }
          ],
          "place_id": "ChIJyzM96gFeXIYRRrp6-REb194",
          "plus_code": {
            "compound_code": "8HV6+XJ San Antonio, TX, USA",
            "global_code": "76X38HV6+XJ"
          },
          "rating": 3.7,
          "reference": "ChIJyzM96gFeXIYRRrp6-REb194",
          "scope": "GOOGLE",
          "types": [
            "pharmacy",
            "hospital",
            "doctor",
            "health",
            "point_of_interest",
            "store",
            "establishment"
          ],
          "user_ratings_total": 9,
          "vicinity": "3327 Research Plaza Suite 403, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.519092, "lng": -98.42947799999999},
            "viewport": {
              "northeast": {"lat": 29.5205735802915, "lng": -98.4278433697085},
              "southwest": {"lat": 29.5178756197085, "lng": -98.4305413302915}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name": "San Antonio Sleep Center",
          "place_id": "ChIJq6fqgtL0XIYR9-sPB_XtX9Q",
          "plus_code": {
            "compound_code": "GH9C+J6 San Antonio, TX, USA",
            "global_code": "76X3GH9C+J6"
          },
          "rating": 1,
          "reference": "ChIJq6fqgtL0XIYR9-sPB_XtX9Q",
          "scope": "GOOGLE",
          "types": ["hospital", "health", "point_of_interest", "establishment"],
          "user_ratings_total": 1,
          "vicinity": "8815 Village Drive, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.5078888, "lng": -98.5775051},
            "viewport": {
              "northeast": {"lat": 29.5095464302915, "lng": -98.5764068197085},
              "southwest": {"lat": 29.5068484697085, "lng": -98.5791047802915}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name": "University Hospital - University Health",
          "opening_hours": {"open_now": true},
          "photos": [
            {
              "height": 682,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/113706390197652534898\">RJ jx</a>"
              ],
              "photo_reference":
                  "ATtYBwKp4QfFE2F4tacWamqFYlEroCOt1vwRLu8eNyljxSKzbLiFRgFfrb7NTOdlAUlxDI7VE45MU92iCsAx8kl-vBBlXc-07qdMr6eTECu3itEmtDrxOupXeu2nt929CzDCXf5GLyKine-SrjW4iJEIuLeWgoLWB8tTk2_UAUroQB1d7LMQ",
              "width": 1024
            }
          ],
          "place_id": "ChIJVSW2JPldXIYR5YQfQaiWYC0",
          "plus_code": {
            "compound_code": "GC5C+5X San Antonio, TX, USA",
            "global_code": "76X3GC5C+5X"
          },
          "rating": 2.9,
          "reference": "ChIJVSW2JPldXIYR5YQfQaiWYC0",
          "scope": "GOOGLE",
          "types": [
            "hospital",
            "doctor",
            "health",
            "point_of_interest",
            "establishment"
          ],
          "user_ratings_total": 1071,
          "vicinity": "4502 Medical Drive, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.6158506, "lng": -98.47464309999999},
            "viewport": {
              "northeast": {"lat": 29.6170501302915, "lng": -98.47331471970848},
              "southwest": {"lat": 29.6143521697085, "lng": -98.4760126802915}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name": "Methodist Physicians iMED Healthcare Associates",
          "opening_hours": {"open_now": false},
          "photos": [
            {
              "height": 4256,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/104324214163431379409\">Methodist Physicians iMED Healthcare Associates</a>"
              ],
              "photo_reference":
                  "ATtYBwIK-nShPmcg5KN5LRFhrPPPgGrkdMG21mXDYYt7D1Jsiu0vlyLoyGw-Ru8Fin7AjtzSE6KBonKwldSrK6VCkkMxJJJJMaueOV5YdDwi4Y_bq04kGt7ZBJGSeENWqP0ZYCkdRPHrxjeC2konVgYw_zKuez_5gsx7IksMkKv3rF_eDxLB",
              "width": 2832
            }
          ],
          "place_id": "ChIJYTH6jPmJXIYRbKAldrGKZc4",
          "plus_code": {
            "compound_code": "JG8G+84 San Antonio, TX, USA",
            "global_code": "76X3JG8G+84"
          },
          "rating": 4.5,
          "reference": "ChIJYTH6jPmJXIYRbKAldrGKZc4",
          "scope": "GOOGLE",
          "types": ["hospital", "health", "point_of_interest", "establishment"],
          "user_ratings_total": 176,
          "vicinity": "1139 East Sonterra Boulevard Suite 405, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.4344505, "lng": -98.49274509999999},
            "viewport": {
              "northeast": {"lat": 29.4352924302915, "lng": -98.4915437197085},
              "southwest": {"lat": 29.4325944697085, "lng": -98.49424168029151}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name": "Baptist Medical Center",
          "opening_hours": {"open_now": true},
          "photos": [
            {
              "height": 3120,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/104486604572327185535\">Rainbow Warrior</a>"
              ],
              "photo_reference":
                  "ATtYBwLlng8AzGRDqkhAlsxvg8X7HkeZgyJQS37YCx9WLvjM5U-2nPo9pvtSSPR2dyekQMXbd3SVmTy5Q63EZaNdULtIHLfTbYL_00Yoz-l4kxN1l3obrTXGLb50J-2Au_XRl-_JdNyCVFZYGjjU2nbR2qyZuNHTG3c9qvkQtTDSy1buNZp9",
              "width": 4160
            }
          ],
          "place_id": "ChIJN5VRVlBfXIYRzKe9HtkkIS8",
          "plus_code": {
            "compound_code": "CGM4+QW San Antonio, TX, USA",
            "global_code": "76X3CGM4+QW"
          },
          "rating": 2.8,
          "reference": "ChIJN5VRVlBfXIYRzKe9HtkkIS8",
          "scope": "GOOGLE",
          "types": ["hospital", "health", "point_of_interest", "establishment"],
          "user_ratings_total": 253,
          "vicinity": "111 Dallas Street, San Antonio"
        },
        {
          "business_status": "OPERATIONAL",
          "geometry": {
            "location": {"lat": 29.5072718, "lng": -98.57228459999999},
            "viewport": {
              "northeast": {"lat": 29.5088455802915, "lng": -98.57125126970848},
              "southwest": {"lat": 29.5061476197085, "lng": -98.57394923029149}
            }
          },
          "icon":
              "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
          "name": "Methodist Hospital",
          "opening_hours": {"open_now": true},
          "photos": [
            {
              "height": 270,
              "html_attributions": [
                "<a href=\"https://maps.google.com/maps/contrib/104608163865184579378\">Methodist Hospital</a>"
              ],
              "photo_reference":
                  "ATtYBwI3wPX-INMTPYD7FUo-NO7whLFSuF9bRatyoMITXO_M7MW3Je5nlsc1ms7O6IZWVtFOwYZzqy3LC3QsKIpsQWGOoZsygkwk9IayXi5GGEmKJHT0z54LNVGQaiQ03MlFM2yANsitTusK36rPir9-DkgrJ3TxWNxy7d-7VZ-1zTTsgXXB",
              "width": 480
            }
          ],
          "place_id": "ChIJt6o3IP5dXIYRekX58B0b0Do",
          "plus_code": {
            "compound_code": "GC4H+W3 San Antonio, TX, USA",
            "global_code": "76X3GC4H+W3"
          },
          "rating": 4.3,
          "reference": "ChIJt6o3IP5dXIYRekX58B0b0Do",
          "scope": "GOOGLE",
          "types": ["hospital", "health", "point_of_interest", "establishment"],
          "user_ratings_total": 1802,
          "vicinity": "7700 Floyd Curl Drive, Main Entrance, San Antonio"
        }
      ],
      "status": "OK"
    }['results'];
  }

  Future<dynamic> getPrices(String name) async {
    print('Test');
    return {
      "General Checkup": "\$60",
      "Physical Examination": "\$170",
      "ER Visit": "\$383",
      "Arm Cast": "\$339-\$392",
      "Leg Cast": "\$555-\$864",
      "Vaccines": "\$52-\$709",
      "More on website...": "",
    };
  }
}
