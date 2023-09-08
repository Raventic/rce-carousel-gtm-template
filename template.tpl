___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Raventic Recommendations Carousel",
  "description": "Raventic RCE Carousel is a widget that displays similar products from your catalogue for a given product.",
  "categories": [
    "CONVERSIONS",
    "PERSONALIZATION",
    "REMARKETING"
  ],
  "brand": {
    "id": "RaventicAI",
    "displayName": "RAVENTIC"
  },
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "mode",
    "displayName": "Integration mode",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "devel",
        "displayValue": "Development"
      },
      {
        "value": "production",
        "displayValue": "Production"
      }
    ],
    "simpleValueType": true,
    "alwaysInSummary": true,
    "help": "Integration level - you will be testing your integration in development mode. After you are done with testing and receive an API key for production you will switch to production mode."
  },
  {
    "type": "GROUP",
    "name": "basic",
    "displayName": "Basics",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "apiKey",
        "displayName": "API key",
        "simpleValueType": true,
        "help": "Application Key provided by Raventic.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          },
          {
            "type": "STRING_LENGTH",
            "args": [
              31,
              31
            ]
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "service",
        "displayName": "Service",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "visual-similarity",
            "displayValue": "Visual similarity"
          }
        ],
        "simpleValueType": true,
        "help": "Service type you want to use in the carousel.",
        "alwaysInSummary": true
      },
      {
        "type": "TEXT",
        "name": "targetContainerId",
        "displayName": "Container element ID",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "help": "ID if the HTML element where the carousel will be placed.",
        "alwaysInSummary": true
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "dataLayer",
    "displayName": "Data layer",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "productId",
        "displayName": "Product ID",
        "simpleValueType": true,
        "help": "Data layer variable with the product ID.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "alwaysInSummary": true
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "visualRequired",
    "displayName": "Visual",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "locale",
        "displayName": "Site locale",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "help": "Your site locale (en-US, cs-CZ, etc.). Used to correctly format prices and decimal numbers. You will receive this value from Raventic."
      },
      {
        "type": "TEXT",
        "name": "title",
        "displayName": "Carousel title",
        "simpleValueType": true,
        "help": "Header text that will be displayed above the carousel.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "resultsCount",
        "displayName": "Number of results to display in the carousel (1 - 50)",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "POSITIVE_NUMBER"
          }
        ],
        "defaultValue": 15
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "measuring",
    "displayName": "Performance measuring",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "onProductClickDataLayer",
        "checkboxText": "Push an event to data layer when user clicks on a suggested product",
        "simpleValueType": true,
        "alwaysInSummary": true,
        "defaultValue": true
      },
      {
        "type": "TEXT",
        "name": "onProductClickEventName",
        "displayName": "Event name",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "onProductClickDataLayer",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "defaultValue": "RaventicRCECarouselClick",
        "alwaysInSummary": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "visualPrice",
    "displayName": "Prices formatting",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "currency",
        "displayName": "Price currency if not in feed values (EUR, USD, CZK, ...)",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "priceDecimals",
        "displayName": "Number of decimals in prices (default 2)",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_NEGATIVE_NUMBER"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "texts",
    "displayName": "Additional texts",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "inStockText",
        "displayName": "In stock label text",
        "simpleValueType": true,
        "help": "This text will be displayed in a label when a product is in stock."
      },
      {
        "type": "TEXT",
        "name": "prevTitle",
        "displayName": "Previous (left) arrow title",
        "simpleValueType": true,
        "help": "This text will be displayed as hint on the previous/left arrow."
      },
      {
        "type": "TEXT",
        "name": "nextTitle",
        "displayName": "Next (right) arrow title",
        "simpleValueType": true,
        "help": "This text will be displayed as hint on the next/right arrow."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "visualRating",
    "displayName": "User rating",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "ratingDecimals",
        "displayName": "Number of decimals in user rating (default 1)",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_NEGATIVE_NUMBER"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "styles",
    "displayName": "Visual customization \u0026 styling",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "disableDefaultStyles",
        "checkboxText": "Disable default styles",
        "simpleValueType": true,
        "help": "Default style will not be loaded. You are expected to provide your own CSS styles as part of the page."
      },
      {
        "type": "TEXT",
        "name": "classPrefix",
        "displayName": "Prefix of HTML classes in the carousel",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "disableDefaultStyles",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "help": "If case some HTML classes in the default carousel collide with classes in your page, you can use prefix them. In case you are using custom templates, this setting does not make sense."
      },
      {
        "type": "CHECKBOX",
        "name": "customTemplates",
        "checkboxText": "Use custom templates",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "customTemplate",
        "displayName": "Custom carousel layout template",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "customTemplates",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "lineCount": 15,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "help": "You can provide a Mustache template that will be used as the crousel layout."
      },
      {
        "type": "TEXT",
        "name": "customProductTemplate",
        "displayName": "Custom carousel product template",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "customTemplates",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "lineCount": 15,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "help": "You can provide a Mustache template that will be used as a single product template."
      },
      {
        "type": "CHECKBOX",
        "name": "thumbnailCustomSize",
        "checkboxText": "Use custom image dimensions",
        "simpleValueType": true,
        "help": "The default settings for displayed images are 350x350. If you want other exact dimensions, you can specify them.",
        "subParams": []
      },
      {
        "type": "TEXT",
        "name": "thumbnailWidth",
        "displayName": "Width",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "imagesCustomSize",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "POSITIVE_NUMBER"
          }
        ],
        "valueUnit": "px"
      },
      {
        "type": "TEXT",
        "name": "thumbnailHeight",
        "displayName": "Height",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "imagesCustomSize",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "POSITIVE_NUMBER"
          }
        ],
        "valueUnit": "px"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const callInWindow = require('callInWindow');
const createQueue = require('createQueue');
const injectScript = require('injectScript');
const makeInteger = require('makeInteger');
const logToConsole = require('logToConsole');

const initWidget = () => {
  let onProductClick;
  if (data.onProductClickDataLayer && data.onProductClickEventName) {
    const dataLayerPush = createQueue('dataLayer');
    onProductClick = (event, product) => {
      dataLayerPush({
        event: data.onProductClickEventName,
        raventic: {
          recommendations: {
            clickedProduct: product,
          },
         },
      });
    };
  }
  
  callInWindow(
    data.mode === "production" ? "RaventicRCECarousel.draw" : "RaventicRCECarouselDevel.draw", 
    {
      apiKey: data.apiKey,
      service: data.service
    },
    {
      targetContainerId: data.targetContainerId,
      locale: data.locale,
      title: data.title,
      resultsCount: data.resultsCount,
      currency: data.currency,
      priceDecimals: data.priceDecimals !== undefined ? makeInteger(data.priceDecimals) : undefined,
      thumbnailDimensions: data.thumbnailCustomSize && data.thumbnailWidth && data.thumbnailHeight ? {
        width: makeInteger(data.thumbnailWidth),
        height: makeInteger(data.thumbnailHeight),
      } : undefined,
      inStockText: data.inStockText,
      prevTitle: data.prevTitle,
      nextTitle: data.nextTitle,
      ratingDecimals: data.ratingDecimals !== undefined ? makeInteger(data.ratingDecimals) : undefined,
      customTemplate: data.customTemplates ? data.customTemplate : undefined,
      customProductTemplate: data.customTemplates ? data.customProductTemplate : undefined,
      disableDefaultStyles: data.disableDefaultStyles,
      classPrefix: data.disableDefaultStyles ? data.classPrefix : undefined,
    },
    data.productId,
    onProductClick,
    (stage, error) => logToConsole(stage, error),
    undefined
  );
  
  data.gtmOnSuccess();
};

if (data.mode === "production") {
  injectScript("https://sdk.rvndn.com/rce/v1/rvn-rce.min.js", initWidget, data.gtmOnFailure);
} else {
  injectScript("https://sdk.rvndn.com/rce/v1/rvn-rce.dev.min.js", initWidget, data.gtmOnFailure);
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "dataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "RaventicRCECarousel.draw"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "RaventicRCECarouselDevel.draw"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://sdk.rvndn.com/rce/*/*.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 30. 1. 2023 15:21:26


