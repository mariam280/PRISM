const geminiResponseSchema = {
  "type": "OBJECT",
  "properties": {
    // ── Used to build RecentProjectModel ──────────────────────────
    "projectMeta": {
      "type": "OBJECT",
      "properties": {
        "projectName": {
          "type": "STRING",
          "description": "Short, human-readable name for this screen, "
              "e.g. 'E-Commerce Home'."
        },
        "platformType": {
          "type": "STRING",
          "enum": ["Mobile", "Web", "Desktop"]
        },
        "screenCategory": {
          "type": "STRING",
          "description": "What kind of screen this is, e.g. 'Home "
              "Screen', 'Checkout', 'Dashboard', 'Settings'."
        }
      },
      "required": ["projectName", "platformType", "screenCategory"]
    },

    // ── Used to build OverviewModel ───────────────────────────────
    "overview": {
      "type": "OBJECT",
      "properties": {
        "description": {
          "type": "STRING",
          "description": "1-2 sentence summary of the screen's purpose "
              "and layout hierarchy."
        },
        "stats": {
          "type": "ARRAY",
          "items": {
            "type": "OBJECT",
            "properties": {
              "value": {"type": "INTEGER"},
              "label": {
                "type": "STRING",
                "enum": ["Components", "Colors", "Text Styles", "Sections"]
              }
            },
            "required": ["value", "label"]
          }
        },
        "structureItems": {
          "type": "ARRAY",
          "items": {"type": "STRING"},
          "description": "Ordered list of the screen's structural "
              "sections top to bottom, e.g. ['App Bar', 'Search', "
              "'Categories']."
        }
      },
      "required": ["description", "stats", "structureItems"]
    },

    // ── Used to build DesignModel ──────────────────────────────────
    "design": {
      "type": "OBJECT",
      "properties": {
        "colors": {
          "type": "ARRAY",
          "items": {
            "type": "OBJECT",
            "properties": {
              "name": {"type": "STRING"},
              "hex": {
                "type": "STRING",
                "description": "6-digit hex code with #, e.g. '#7C6CFF'."
              },
              "isAiDetected": {
                "type": "BOOLEAN",
                "description": "true if this color was directly sampled "
                    "from the screenshot, false if it's an estimated/"
                    "supporting color."
              }
            },
            "required": ["name", "hex", "isAiDetected"]
          }
        },
        "typography": {
          "type": "ARRAY",
          "items": {
            "type": "OBJECT",
            "properties": {
              "label": {
                "type": "STRING",
                "enum": ["Heading", "Body", "Caption"]
              },
              "spec": {
                "type": "STRING",
                "description": "Format: 'FontFamily / Weight / Size px', "
                    "e.g. 'Inter / Bold / 24 px'."
              },
              "isAiDetected": {"type": "BOOLEAN"}
            },
            "required": ["label", "spec", "isAiDetected"]
          }
        },
        "spacing": {
          "type": "ARRAY",
          "items": {"type": "INTEGER"},
          "description": "Estimated spacing scale in px, ascending, "
              "e.g. [8, 16, 24, 32]."
        },
        "shape": {
          "type": "OBJECT",
          "properties": {
            "borderRadius": {
              "type": "STRING",
              "description": "e.g. '12–16 px'."
            },
            "shadow": {
              "type": "STRING",
              "enum": ["None", "Subtle", "Medium", "Strong"]
            }
          },
          "required": ["borderRadius", "shadow"]
        }
      },
      "required": ["colors", "typography", "spacing", "shape"]
    },

    // ── Used to build List<ComponentModel> ────────────────────────
    "components": {
      "type": "ARRAY",
      "items": {
        "type": "OBJECT",
        "properties": {
          "name": {
            "type": "STRING",
            "description": "e.g. 'Primary Button', 'Search Field'."
          },
          "subtitleType": {
            "type": "STRING",
            "description": "Format: 'Category · size', e.g. "
                "'Interactive · 48 px'."
          },
          "isAiDetected": {"type": "BOOLEAN"},
          "specs": {
            "type": "ARRAY",
            "items": {
              "type": "OBJECT",
              "properties": {
                "label": {"type": "STRING"},
                "value": {"type": "STRING"},
                "isEstimated": {"type": "BOOLEAN"}
              },
              "required": ["label", "value", "isEstimated"]
            }
          }
        },
        "required": ["name", "subtitleType", "isAiDetected", "specs"]
      }
    }
  },
  "required": ["projectMeta", "overview", "design", "components"]
};