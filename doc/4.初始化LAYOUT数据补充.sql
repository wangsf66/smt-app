-- 初始化LAYOUT表数据 补充
DECLARE @LAYOUT_ID VARCHAR(36)
DECLARE @CREATE_USER_ID VARCHAR(36)
DECLARE @CREATE_DATE DATETIME
DECLARE @PROJECT_CODE VARCHAR(36)
DECLARE @TENANT_ID VARCHAR(36)
DECLARE @PAGE_JSON VARCHAR(MAX)
DECLARE @STATE SMALLINT
DECLARE @REMARK VARCHAR(200)
DECLARE @CMPT_TYPE VARCHAR(20)
DECLARE @LAYOUT_CODE VARCHAR(50)
DECLARE @JSON VARCHAR(MAX)
DECLARE @PAGE_CODE VARCHAR(36)
DECLARE @VERSION VARCHAR(50)
DECLARE @LAYOUT_NAME VARCHAR(50)
DECLARE @SORT SMALLINT

SET @CREATE_USER_ID = '200ceb26807d6bf99fd6f4f0d1ca54d40001'
SET @CREATE_DATE = GETDATE()
SET @PROJECT_CODE = 'SMT_VC'
SET @TENANT_ID = '200ceb26807d6bf99fd6f4f0d1ca54d40002'
SET @STATE = 1
SET @REMARK = NULL
SET @CMPT_TYPE = NULL
SET @JSON = NULL

BEGIN
    SET @PAGE_JSON = '{
    "layoutJson": {
        "id": "Module",
        "type": "pageHeader",
        "title": "",
        "container": "pageHeader",
        "pageHeader": {
            "id": "pageheader_1",
            "title": "菜单管理",
            "subTitle": "创建系统模块，维护系统功能",
            "tagColor": "blue",
            "tagText": "系统功能",
            "descColumnsCount": 2,
            "operation": [],
            "contentItems": [],
            "defaultLoading": true,
            "enableDrop": true,
            "layout": {
                "id": "Module_layout",
                "type": "layout",
                "title": "布局",
                "container": "rows",
                "rows": [
                    {
                        "cols": [
                            {
                                "id": "col_tree_menu",
                                "col": "cc",
                                "type": "col",
                                "titlestate": 1,
                                "title": "",
                                "span": 6,
                                "container": "component",
                                "header": {
                                    "title": "菜单",
                                    "icon": "",
                                    "id": "button_01"
                                },
                                "size": {
                                    "nzXs": 6,
                                    "nzSm": 6,
                                    "nzMd": 6,
                                    "nzLg": 6,
                                    "ngXl": 6,
                                    "nzXXl": 6
                                },
                                "bodyStyle": {
                                    "min-height": "650px",
                                    "max-height": "670px",
                                    "overflow-y": "auto"
                                },
                                "component": {
                                    "id": "tree_menu",
                                    "type": "cnTree",
                                    "title": "",
                                    "container": "cnTree"
                                }
                            },
                            {
                                "id": "col_menu_page_table",
                                "col": "cc",
                                "type": "col",
                                "titlestate": 1,
                                "title": "",
                                "span": 18,
                                "container": "component",
                                "header": {
                                    "title": "菜单_页面设置",
                                    "icon": "",
                                    "id": "button_menu_page"
                                },
                                "size": {
                                    "nzXs": 18,
                                    "nzSm": 18,
                                    "nzMd": 18,
                                    "nzLg": 18,
                                    "ngXl": 18,
                                    "nzXXl": 18
                                },
                                "bodyStyle": {
                                    "min-height": "650px"
                                },
                                "component": {
                                    "id": "tree_table_page",
                                    "type": "cnDataTable",
                                    "title": "",
                                    "container": "cnDataTable"
                                }
                            }
                        ],
                        "id": "Modu_rows",
                        "type": "row",
                        "title": "行",
                        "container": "cols"
                    }
                ]
            }
        },
        "cascade": {
            "messageSender": [],
            "messageReceiver": []
        }
    },
    "componentsJson": [
        {
            "id": "button_01",
            "component": "cnToolbar",
            "size": "small",
            "changeValue": [
                {
                    "id": "edit__menu_form_changeValue",
                    "params": [
                        {
                            "name": "ID",
                            "type": "item",
                            "valueName": "ID",
                            "valueTo": "tempValue"
                        }
                    ]
                }
            ],
            "dialog": [
                {
                    "id": "add_menu_tree_form",
                    "type": "confirm",
                    "title": "菜单编辑",
                    "okText": "保存",
                    "cancelText": "取消",
                    "form": {
                        "id": "form_menu_1",
                        "type": "form",
                        "component": "form",
                        "state": "new",
                        "loadingConfig": {},
                        "formLayout": {
                            "id": "Module_M_Layout",
                            "type": "layout",
                            "title": "表单布局",
                            "rows": [
                                {
                                    "id": "Module_M",
                                    "type": "row",
                                    "cols": [
                                        {
                                            "id": "form_col_menu_parent",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_parent"
                                            }
                                        },
                                        {
                                            "id": "form_col_menu_name",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_name"
                                            }
                                        },
                                        {
                                            "id": "form_col_menu_icon",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_icon"
                                            }
                                        },
                                        {
                                            "id": "form_col_menu_i18n",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_i18n"
                                            }
                                        },
                                        {
                                            "id": "form_col_menu_level",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_level"
                                            }
                                        },
                                        {
                                            "id": "form_col_menu_code",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_code"
                                            }
                                        },
                                        {
                                            "id": "form_col_menu_status",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_status"
                                            }
                                        },
                                        {
                                            "id": "form_col_menu_sort",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_sort"
                                            }
                                        },
                                        {
                                            "id": "form_col_menu_remark",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_remark"
                                            }
                                        }
                                    ]
                                }
                            ]
                        },
                        "formControls": [
                            {
                                "id": "form_ctrl_menu_parent",
                                "hidden": true,
                                "title": "上级分类",
                                "titleConfig": {
                                    "required": false
                                },
                                "field": "PARENT_ID",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "PARENT_ID"
                                },
                                "editor": {
                                    "type": "treeSelect",
                                    "field": "PARENT_ID",
                                    "placeholder": "",
                                    "async": false,
                                    "keyId": "ID",
                                    "columns": [
                                        {
                                            "title": "ID",
                                            "type": "key",
                                            "field": "ID"
                                        },
                                        {
                                            "title": "PARENT_ID",
                                            "type": "parentId",
                                            "field": "PARENT_ID"
                                        },
                                        {
                                            "title": "NAME",
                                            "type": "title",
                                            "field": "NAME"
                                        }
                                    ],
                                    "validations": [],
                                    "loadingConfig": {
                                        "id": "loadMenuParentSelect"
                                    },
                                    "loadingItemConfig": {
                                        "id": "loadMenuItem"
                                    },
                                    "showSearch": true,
                                    "serverSearch": true
                                }
                            },
                            {
                                "id": "form_ctrl_menu_name",
                                "hidden": true,
                                "title": "菜单名称",
                                "titleConfig": {
                                    "required": true
                                },
                                "field": "NAME",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "NAME"
                                },
                                "editor": {
                                    "type": "input",
                                    "field": "NAME",
                                    "placeholder": "请输入菜单名称",
                                    "validations": [
                                        {
                                            "validator": "required",
                                            "type": "default",
                                            "message": "请输入菜单名称 "
                                        }
                                    ]
                                }
                            },
                            {
                                "id": "form_ctrl_menu_icon",
                                "hidden": true,
                                "title": "图标名称",
                                "titleConfig": {
                                    "required": true
                                },
                                "field": "ICON",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "ICON"
                                },
                                "editor": {
                                    "type": "input",
                                    "field": "ICON",
                                    "placeholder": "请输入图标名称",
                                    "validations": [
                                        {
                                            "validator": "required",
                                            "type": "default",
                                            "message": "请输入图标名称 "
                                        }
                                    ]
                                }
                            },
                            {
                                "id": "form_ctrl_menu_code",
                                "hidden": true,
                                "title": "菜单编码",
                                "titleConfig": {
                                    "required": true
                                },
                                "field": "CODE",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "CODE"
                                },
                                "editor": {
                                    "type": "input",
                                    "field": "CODE",
                                    "placeholder": "请输入菜单编码",
                                    "validations": [
                                        {
                                            "validator": "required",
                                            "type": "default",
                                            "message": "请输入菜单编码"
                                        }
                                    ]
                                }
                            },
                            {
                                "id": "form_ctrl_menu_i18n",
                                "hidden": true,
                                "title": "语言编码",
                                "titleConfig": {
                                    "required": true
                                },
                                "field": "I18N",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "I18N"
                                },
                                "editor": {
                                    "type": "input",
                                    "field": "I18N",
                                    "placeholder": "请输入多语言编码",
                                    "validations": [
                                        {
                                            "validator": "required",
                                            "type": "default",
                                            "message": "请输入多语言编码 "
                                        }
                                    ]
                                }
                            },
                            {
                                "id": "form_ctrl_menu_level",
                                "hidden": true,
                                "title": "菜单类型",
                                "titleConfig": {
                                    "required": true
                                },
                                "field": "LEVEL",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "LEVEL"
                                },
                                "editor": {
                                    "type": "radio",
                                    "field": "LEVEL",
                                    "placeholder": "",
                                    "validations": [
                                        {
                                            "validator": "required",
                                            "type": "default",
                                            "message": ""
                                        }
                                    ],
                                    "options": [
                                        {
                                            "label": "模块",
                                            "value": 1
                                        },
                                        {
                                            "label": "页面",
                                            "value": 3
                                        }
                                    ]
                                }
                            },
                            {
                                "id": "form_ctrl_menu_sort",
                                "hidden": true,
                                "title": "排序",
                                "titleConfig": {
                                    "required": true
                                },
                                "field": "SORT",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "SORT"
                                },
                                "editor": {
                                    "type": "input",
                                    "field": "SORT",
                                    "placeholder": "",
                                    "validations": [
                                        {
                                            "validator": "required",
                                            "type": "default",
                                            "message": ""
                                        }
                                    ]
                                }
                            },
                            {
                                "id": "form_ctrl_menu_status",
                                "hidden": true,
                                "title": "状态",
                                "titleConfig": {
                                    "required": true
                                },
                                "field": "STATUS",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "STATUS"
                                },
                                "editor": {
                                    "type": "radio",
                                    "field": "STATUS",
                                    "placeholder": "",
                                    "validations": [
                                        {
                                            "validator": "required",
                                            "type": "default",
                                            "message": ""
                                        }
                                    ],
                                    "options": [
                                        {
                                            "label": "启用",
                                            "value": 2
                                        },
                                        {
                                            "label": "禁用",
                                            "value": 1
                                        }
                                    ]
                                }
                            },
                            {
                                "id": "form_ctrl_menu_remark",
                                "hidden": true,
                                "title": "备注",
                                "titleConfig": {
                                    "required": false
                                },
                                "field": "REMARK",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "REMARK"
                                },
                                "editor": {
                                    "type": "textarea",
                                    "field": "REMARK",
                                    "placeholder": "",
                                    "validations": [],
                                    "autosize": {
                                        "minRows": 2,
                                        "maxRows": 4
                                    }
                                }
                            }
                        ],
                        "formControlsPermissions": [
                            {
                                "formState": "new",
                                "formStateContent": {
                                    "isLoad": false,
                                    "loadAjax": {},
                                    "isDefault": true
                                },
                                "Controls": [
                                    {
                                        "id": "form_ctrl_menu_name",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_icon",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_i18n",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_code",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_level",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_sort",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_status",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_remark",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_parent",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    }
                                ]
                            },
                            {
                                "formState": "edit",
                                "Controls": [
                                    {
                                        "id": "form_ctrl_menu_name",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_icon",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_i18n",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_code",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_level",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_sort",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_status",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_remark",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_parent",
                                        "state": "edit",
                                        "hidden": true,
                                        "readOnly": false
                                    }
                                ]
                            }
                        ],
                        "ajaxConfig": [
                            {
                                "id": "loadMenuParentSelect",
                                "url": "resource/GET_SYS_MENU_TREE/query",
                                "urlType": "inner",
                                "ajaxType": "get",
                                "params": [
                                    {
                                        "name": "_recursive",
                                        "type": "value",
                                        "value": true
                                    },
                                    {
                                        "name": "_deep",
                                        "type": "value",
                                        "value": "2"
                                    },
                                    {
                                        "name": "_pcName",
                                        "type": "value",
                                        "value": "PID"
                                    }
                                ],
                                "outputParameters": [],
                                "result": []
                            },
                            {
                                "id": "loadMenuItemSelect",
                                "url": "resource/SYS_MENU/query",
                                "urlType": "inner",
                                "ajaxType": "get",
                                "params": [
                                    {
                                        "name": "ID",
                                        "type": "item",
                                        "valueName": "ID"
                                    }
                                ],
                                "outputParameters": [],
                                "result": []
                            }
                        ]
                    }
                },
                {
                    "id": "edit_menu_tree_form",
                    "type": "confirm",
                    "title": "模块编辑",
                    "okText": "确定",
                    "cancelText": "取消",
                    "form": {
                        "id": "form_menu_1",
                        "type": "form",
                        "component": "form",
                        "state": "new",
                        "loadingConfig": {
                            "id": "loadMenuConfig"
                        },
                        "formLayout": {
                            "id": "Module_M_Layout",
                            "type": "layout",
                            "title": "表单布局",
                            "rows": [
                                {
                                    "id": "Module_M",
                                    "type": "row",
                                    "cols": [
                                        {
                                            "id": "form_col_menu_parent",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_parent"
                                            }
                                        },
                                        {
                                            "id": "form_col_menu_name",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_name"
                                            }
                                        },
                                        {
                                            "id": "form_col_menu_icon",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_icon"
                                            }
                                        },
                                        {
                                            "id": "form_col_menu_i18n",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_i18n"
                                            }
                                        },
                                        {
                                            "id": "form_col_menu_level",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_level"
                                            }
                                        },
                                        {
                                            "id": "form_col_menu_code",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_code"
                                            }
                                        },
                                        {
                                            "id": "form_col_menu_status",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_status"
                                            }
                                        },
                                        {
                                            "id": "form_col_menu_sort",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_sort"
                                            }
                                        },
                                        {
                                            "id": "form_col_menu_remark",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "form_ctrl_menu_remark"
                                            }
                                        }
                                    ]
                                }
                            ]
                        },
                        "formControls": [
                            {
                                "id": "form_ctrl_menu_parent",
                                "hidden": true,
                                "title": "上级分类",
                                "titleConfig": {
                                    "required": false
                                },
                                "field": "PARENT_ID",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "PARENT_ID"
                                },
                                "editor": {
                                    "type": "treeSelect",
                                    "field": "PARENT_ID",
                                    "placeholder": "",
                                    "async": false,
                                    "keyId": "ID",
                                    "columns": [
                                        {
                                            "title": "ID",
                                            "type": "key",
                                            "field": "ID"
                                        },
                                        {
                                            "title": "PARENT_ID",
                                            "type": "parentId",
                                            "field": "PARENT_ID"
                                        },
                                        {
                                            "title": "NAME",
                                            "type": "title",
                                            "field": "NAME"
                                        }
                                    ],
                                    "validations": [],
                                    "loadingConfig": {
                                        "id": "loadMenuParentSelect"
                                    },
                                    "loadingItemConfig": {
                                        "id": "loadMenuItem"
                                    },
                                    "showSearch": true,
                                    "serverSearch": true
                                }
                            },
                            {
                                "id": "form_ctrl_menu_name",
                                "hidden": true,
                                "title": "菜单名称",
                                "titleConfig": {
                                    "required": true
                                },
                                "field": "NAME",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "NAME"
                                },
                                "editor": {
                                    "type": "input",
                                    "field": "NAME",
                                    "placeholder": "请输入菜单名称",
                                    "validations": [
                                        {
                                            "validator": "required",
                                            "type": "default",
                                            "message": "请输入菜单名称 "
                                        }
                                    ]
                                }
                            },
                            {
                                "id": "form_ctrl_menu_icon",
                                "hidden": true,
                                "title": "图标名称",
                                "titleConfig": {
                                    "required": true
                                },
                                "field": "ICON",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "ICON"
                                },
                                "editor": {
                                    "type": "input",
                                    "field": "ICON",
                                    "placeholder": "请输入图标名称",
                                    "validations": [
                                        {
                                            "validator": "required",
                                            "type": "default",
                                            "message": "请输入图标名称 "
                                        }
                                    ]
                                }
                            },
                            {
                                "id": "form_ctrl_menu_code",
                                "hidden": true,
                                "title": "菜单编码",
                                "titleConfig": {
                                    "required": true
                                },
                                "field": "CODE",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "CODE"
                                },
                                "editor": {
                                    "type": "input",
                                    "field": "CODE",
                                    "placeholder": "请输入菜单编码",
                                    "validations": [
                                        {
                                            "validator": "required",
                                            "type": "default",
                                            "message": "请输入菜单编码 "
                                        }
                                    ]
                                }
                            },
                            {
                                "id": "form_ctrl_menu_i18n",
                                "hidden": true,
                                "title": "语言编码",
                                "titleConfig": {
                                    "required": true
                                },
                                "field": "I18N",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "I18N"
                                },
                                "editor": {
                                    "type": "input",
                                    "field": "I18N",
                                    "placeholder": "请输入多语言编码",
                                    "validations": [
                                        {
                                            "validator": "required",
                                            "type": "default",
                                            "message": "请输入多语言编码 "
                                        }
                                    ]
                                }
                            },
                            {
                                "id": "form_ctrl_menu_level",
                                "hidden": true,
                                "title": "菜单类型",
                                "titleConfig": {
                                    "required": true
                                },
                                "field": "LEVEL",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "LEVEL"
                                },
                                "editor": {
                                    "type": "radio",
                                    "field": "LEVEL",
                                    "placeholder": "",
                                    "validations": [
                                        {
                                            "validator": "required",
                                            "type": "default",
                                            "message": ""
                                        }
                                    ],
                                    "options": [
                                        {
                                            "label": "模块",
                                            "value": 1
                                        },
                                        {
                                            "label": "页面",
                                            "value": 3
                                        }
                                    ]
                                }
                            },
                            {
                                "id": "form_ctrl_menu_sort",
                                "hidden": true,
                                "title": "排序",
                                "titleConfig": {
                                    "required": true
                                },
                                "field": "SORT",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "SORT"
                                },
                                "editor": {
                                    "type": "input",
                                    "field": "SORT",
                                    "placeholder": "",
                                    "validations": [
                                        {
                                            "validator": "required",
                                            "type": "default",
                                            "message": ""
                                        }
                                    ]
                                }
                            },
                            {
                                "id": "form_ctrl_menu_status",
                                "hidden": true,
                                "title": "状态",
                                "titleConfig": {
                                    "required": true
                                },
                                "field": "STATUS",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "STATUS"
                                },
                                "editor": {
                                    "type": "radio",
                                    "field": "STATUS",
                                    "placeholder": "",
                                    "validations": [
                                        {
                                            "validator": "required",
                                            "type": "default",
                                            "message": ""
                                        }
                                    ],
                                    "options": [
                                        {
                                            "label": "启用",
                                            "value": 2
                                        },
                                        {
                                            "label": "禁用",
                                            "value": 1
                                        }
                                    ]
                                }
                            },
                            {
                                "id": "form_ctrl_menu_remark",
                                "hidden": true,
                                "title": "备注",
                                "titleConfig": {
                                    "required": false
                                },
                                "field": "REMARK",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 20,
                                    "nzXs": 20,
                                    "nzSm": 20,
                                    "nzMd": 20,
                                    "nzLg": 20,
                                    "ngXl": 20,
                                    "nzXXl": 20
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "REMARK"
                                },
                                "editor": {
                                    "type": "textarea",
                                    "field": "REMARK",
                                    "placeholder": "",
                                    "validations": [],
                                    "autosize": {
                                        "minRows": 2,
                                        "maxRows": 4
                                    }
                                }
                            }
                        ],
                        "formControlsPermissions": [
                            {
                                "formState": "new",
                                "formStateContent": {
                                    "isLoad": false,
                                    "loadAjax": {},
                                    "isDefault": true
                                },
                                "Controls": [
                                    {
                                        "id": "form_ctrl_menu_name",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_icon",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_i18n",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_code",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_level",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_sort",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_status",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_remark",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_parent",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    }
                                ]
                            },
                            {
                                "formState": "edit",
                                "Controls": [
                                    {
                                        "id": "form_ctrl_menu_name",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_icon",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_i18n",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_code",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_level",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_sort",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_status",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_remark",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    },
                                    {
                                        "id": "form_ctrl_menu_parent",
                                        "state": "edit",
                                        "hidden": true,
                                        "readOnly": false
                                    }
                                ]
                            }
                        ],
                        "ajaxConfig": [
                            {
                                "id": "loadMenuConfig",
                                "url": "resource/GET_MENU_BY_ID/query",
                                "ajaxType": "get",
                                "params": [
                                    {
                                        "name": "ID",
                                        "type": "tempValue",
                                        "valueName": "ID"
                                    }
                                ]
                            },
                            {
                                "id": "loadMenuParentSelect",
                                "url": "resource/GET_SYS_MENU_TREE/query",
                                "urlType": "inner",
                                "ajaxType": "get",
                                "params": [
                                    {
                                        "name": "_recursive",
                                        "type": "value",
                                        "value": true
                                    },
                                    {
                                        "name": "_deep",
                                        "type": "value",
                                        "value": "2"
                                    },
                                    {
                                        "name": "_pcName",
                                        "type": "value",
                                        "value": "PID"
                                    }
                                ],
                                "outputParameters": [],
                                "result": []
                            },
                            {
                                "id": "loadMenuItemSelect",
                                "url": "resource/SYS_MENU/query",
                                "urlType": "inner",
                                "ajaxType": "get",
                                "params": [
                                    {
                                        "name": "ID",
                                        "type": "item",
                                        "valueName": "ID"
                                    }
                                ],
                                "outputParameters": [],
                                "result": []
                            }
                        ]
                    }
                },
                {
                    "id": "delete_menu_tree_form",
                    "type": "confirm",
                    "title": "确认操作",
                    "content": "是否删除当前操作数据?",
                    "cancelText": "取消",
                    "okText": "确认"
                }
            ],
            "condition": [],
            "beforeTrigger": [],
            "afterTrigger": [],
            "toolbar": [
                {
                    "targetViewId": "tree_menu",
                    "text": "设置",
                    "dropdown": [
                        {
                            "id": "M_refresh",
                            "text": "刷新",
                            "icon": "reload",
                            "color": "text-primary",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "BEHAVIOR",
                                    "trigger": "REFRESH"
                                }
                            ]
                        },
                        {
                            "id": "M_addParentNode",
                            "text": "新增",
                            "state": "new",
                            "icon": "plus",
                            "color": "text-primary",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "ACTION",
                                    "trigger": "DIALOG",
                                    "dialogId": "add_menu_tree_form",
                                    "ajaxId": "add_menu_tree_ajax"
                                }
                            ]
                        },
                        {
                            "id": "M_editTreeNode",
                            "text": "编辑",
                            "state": "edit",
                            "icon": "edit",
                            "color": "text-primary",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "ACTION",
                                    "trigger": "DIALOG",
                                    "dialogId": "edit_menu_tree_form",
                                    "ajaxId": "edit_menu_tree_ajax",
                                    "changeValueId": "edit__menu_form_changeValue"
                                }
                            ]
                        },
                        {
                            "id": "M_deleteTreeNode",
                            "text": "删除",
                            "icon": "delete",
                            "color": "text-red-light",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "ACTION",
                                    "trigger": "CONFIRM",
                                    "dialogId": "delete_menu_tree_form",
                                    "ajaxId": "delete_module_tree",
                                    "changeValueId": "edit__menu_form_changeValue"
                                }
                            ]
                        }
                    ]
                }
            ],
            "ajaxConfig": [
                {
                    "id": "add_menu_tree_ajax",
                    "url": "resource/CREATE_SYS_MENU_ITEM/operate",
                    "urlType": "inner",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "ID",
                            "type": "GUID"
                        },
                        {
                            "name": "NAME",
                            "type": "componentValue",
                            "valueName": "NAME"
                        },
                        {
                            "name": "ICON",
                            "type": "componentValue",
                            "valueName": "ICON"
                        },
                        {
                            "name": "I18N",
                            "type": "componentValue",
                            "valueName": "I18N"
                        },
                        {
                            "name": "SORT",
                            "type": "componentValue",
                            "valueName": "SORT",
                            "dataType": "int"
                        },
                        {
                            "name": "LEVEL",
                            "type": "componentValue",
                            "valueName": "LEVEL"
                        },
                        {
                            "name": "STATUS",
                            "type": "componentValue",
                            "valueName": "STATUS"
                        },
                        {
                            "name": "CODE",
                            "type": "componentValue",
                            "valueName": "CODE"
                        },
                        {
                            "name": "REMARK",
                            "type": "componentValue",
                            "valueName": "REMARK"
                        },
                        {
                            "name": "PARENT_ID",
                            "type": "componentValue",
                            "valueName": "PARENT_ID"
                        }
                    ],
                    "outputParameters": [],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "新增成功",
                            "senderId": "aftetMenuSaveSuccessfully"
                        }
                    ]
                },
                {
                    "id": "edit_menu_tree_ajax",
                    "url": "resource/UPDATE_SYS_MENU_ITEM/operate",
                    "urlType": "inner",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "ID",
                            "type": "tempValue",
                            "valueName": "ID"
                        },
                        {
                            "name": "NAME",
                            "type": "componentValue",
                            "valueName": "NAME"
                        },
                        {
                            "name": "ICON",
                            "type": "componentValue",
                            "valueName": "ICON"
                        },
                        {
                            "name": "I18N",
                            "type": "componentValue",
                            "valueName": "I18N"
                        },
                        {
                            "name": "SORT",
                            "type": "componentValue",
                            "valueName": "SORT"
                        },
                        {
                            "name": "LEVEL",
                            "type": "componentValue",
                            "valueName": "LEVEL"
                        },
                        {
                            "name": "STATUS",
                            "type": "componentValue",
                            "valueName": "STATUS"
                        },
                        {
                            "name": "CODE",
                            "type": "componentValue",
                            "valueName": "CODE"
                        },
                        {
                            "name": "REMARK",
                            "type": "componentValue",
                            "valueName": "REMARK"
                        },
                        {
                            "name": "PARENT_ID",
                            "type": "componentValue",
                            "valueName": "PARENT_ID"
                        }
                    ],
                    "outputParameters": [],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "编辑成功",
                            "senderId": "afterMenuEditSuccessfully"
                        }
                    ]
                },
                {
                    "id": "delete_module_tree",
                    "url": "resource/DELETE_SYS_MENU_PROC_BY_ID/operate",
                    "urlType": "inner",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "ID",
                            "type": "item",
                            "valueName": "ID"
                        },
                        {
                            "name": "LEVEL",
                            "type": "item",
                            "valueName": "LEVEL"
                        }
                    ],
                    "outputParameters": [],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "删除成功",
                            "senderId": "afterMenuDeleteSuccessfully"
                        }
                    ]
                }
            ],
            "cascade": {
                "messageSender": [
                    {
                        "id": "toolbar_01",
                        "senderId": "button_01",
                        "triggerType": "OPERATION",
                        "trigger": "EXECUTE_CHECKED_ROWS",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "REFRESH_AS_CHILD",
                                "params": [
                                    {
                                        "name": "parent_id",
                                        "type": "item",
                                        "valueName": "id"
                                    },
                                    {
                                        "name": "parent_name",
                                        "type": "item",
                                        "valueName": "name"
                                    }
                                ]
                            }
                        ]
                    }
                ],
                "messageReceiver": []
            }
        },
        {
            "id": "button_menu_page",
            "component": "cnToolbar",
            "size": "small",
            "changeValue": [
                {
                    "id": "changeValue_menu_page",
                    "params": [
                        {
                            "name": "MENU_CODE",
                            "type": "tempValue",
                            "valueName": "MENU_CODE",
                            "valueTo": "tempValue"
                        },
                        {
                            "name": "TYPE",
                            "type": "tempValue",
                            "valueName": "TYPE",
                            "valueTo": "tempValue"
                        }
                    ]
                }
            ],
            "dialog": [
                {
                    "id": "form_menu_page_new",
                    "type": "confirm",
                    "title": "菜单_页面设置",
                    "cancelText": "取消",
                    "okText": "确定",
                    "form": {
                        "id": "form_menu_page_new",
                        "type": "form",
                        "component": "form",
                        "state": "new",
                        "loadingConfig": {
                            "id": "loadform_table"
                        },
                        "formLayout": {
                            "id": "Module_D_Layout",
                            "type": "layout",
                            "title": "",
                            "rows": [
                                {
                                    "id": "fier5634k",
                                    "type": "row",
                                    "cols": [
                                        {
                                            "id": "menu_page_page_col",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "menu_page_page_ctrl"
                                            }
                                        }
                                    ]
                                }
                            ]
                        },
                        "formControls": [
                            {
                                "id": "menu_page_page_ctrl",
                                "hidden": false,
                                "title": "关联页面",
                                "titleConfig": {
                                    "required": true
                                },
                                "field": "PAGE_CODE",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 18,
                                    "nzXs": 18,
                                    "nzSm": 18,
                                    "nzMd": 18,
                                    "nzLg": 18,
                                    "ngXl": 18,
                                    "nzXXl": 18
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "PAGE_CODE"
                                },
                                "editor": {
                                    "type": "treeSelect",
                                    "field": "PAGE_CODE",
                                    "placeholder": "请输入",
                                    "asyncData": true,
                                    "keyId": "ID",
                                    "loadingConfig": {
                                        "id": "loadPageTree"
                                    },
                                    "expandConfig": {
                                        "id": "loadPageTreeExpand"
                                    },
                                    "loadingItemConfig": {
                                        "id": "loadMenuPageitem"
                                    },
                                    "columns": [
                                        {
                                            "title": "ID",
                                            "type": "key",
                                            "field": "CODE"
                                        },
                                        {
                                            "title": "PID",
                                            "type": "parentId",
                                            "field": "PID"
                                        },
                                        {
                                            "title": "NAME",
                                            "type": "title",
                                            "field": "NAME"
                                        }
                                    ]
                                }
                            }
                        ],
                        "formControlsPermissions": [
                            {
                                "formState": "new",
                                "formStateContent": {
                                    "isLoad": false,
                                    "loadAjax": {},
                                    "isDefault": true
                                },
                                "Controls": [
                                    {
                                        "id": "menu_page_page_ctrl",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    }
                                ]
                            }
                        ],
                        "ajaxConfig": [
                            {
                                "id": "loadMenuPageitem",
                                "url": "resource/GET_SMT_PAGE_LAYOUT_TREE/query",
                                "urlType": "inner",
                                "ajaxType": "get",
                                "params": [
                                    {
                                        "name": "PAGE_ID",
                                        "type": "componentValue",
                                        "valueName": "value"
                                    }
                                ],
                                "outputParameters": [],
                                "result": []
                            },
                            {
                                "id": "loadPageTree",
                                "url": "resource/GET_FUNC_PAGE_TREE/query",
                                "urlType": "inner",
                                "ajaxType": "get",
                                "params": [
                                    {
                                        "name": "_recursive",
                                        "type": "value",
                                        "value": true
                                    },
                                    {
                                        "name": "_deep",
                                        "type": "value",
                                        "value": "2"
                                    },
                                    {
                                        "name": "_pcName",
                                        "type": "value",
                                        "value": "PID"
                                    }
                                ],
                                "outputParameters": [],
                                "result": []
                            },
                            {
                                "id": "loadPageTreeExpand",
                                "url": "resource/GET_SMT_PAGE_LAYOUT_TREE/query",
                                "urlType": "inner",
                                "ajaxType": "get",
                                "params": [
                                    {
                                        "name": "_recursive",
                                        "type": "value",
                                        "value": true
                                    },
                                    {
                                        "name": "_deep",
                                        "type": "value",
                                        "value": "2"
                                    },
                                    {
                                        "name": "_pcName",
                                        "type": "value",
                                        "value": "PID"
                                    },
                                    {
                                        "name": "_root.PID",
                                        "type": "item",
                                        "valueName": "key"
                                    }
                                ],
                                "outputParameters": [],
                                "result": []
                            },
                            {
                                "id": "loadMenuPageTree",
                                "url": "resource/GET_MENU_PAGE_TREE/query",
                                "urlType": "inner",
                                "ajaxType": "get",
                                "params": [
                                    {
                                        "name": "_recursive",
                                        "type": "value",
                                        "value": true
                                    },
                                    {
                                        "name": "_deep",
                                        "type": "value",
                                        "value": "-1"
                                    },
                                    {
                                        "name": "_pcName",
                                        "type": "value",
                                        "value,": "PARENT_ID"
                                    },
                                    {
                                        "name": "_root.MENU_CODE",
                                        "type": "tempValue",
                                        "valueName": "MENU_CODE"
                                    }
                                ],
                                "outputParameters": [],
                                "result": []
                            }
                        ]
                    }
                }
            ],
            "toolbar": [
                {
                    "targetViewId": "tree_table_page",
                    "group": [
                        {
                            "id": "D_TABLE_ADD_FORM",
                            "text": "新增",
                            "state": "new",
                            "icon": "plus",
                            "color": "primary",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "ACTION",
                                    "trigger": "DIALOG",
                                    "dialogId": "form_menu_page_new",
                                    "ajaxId": "form_add_menu_page",
                                    "changeValueId": "changeValue_menu_page"
                                }
                            ]
                        }
                    ]
                }
            ],
            "ajaxConfig": [
                {
                    "id": "form_add_menu_page",
                    "url": "resource/SMT_MENU_PAGE_REL/insert",
                    "urlType": "inner",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "ID",
                            "type": "GUID"
                        },
                        {
                            "name": "PARENT_ID",
                            "type": "componentValue",
                            "valueName": "PARENT_ID",
                            "value": null
                        },
                        {
                            "name": "MENU_CODE",
                            "type": "tempValue",
                            "valueName": "MENU_CODE"
                        },
                        {
                            "name": "PAGE_CODE",
                            "type": "componentValue",
                            "valueName": "PAGE_CODE"
                        },
                        {
                            "name": "MENU_PAGE_ORDER",
                            "type": "value",
                            "value": null,
                            "dataType": "nullable"
                        },
                        {
                            "name": "MENU_PAGE_ENABLED",
                            "type": "value",
                            "value": 1
                        }
                    ],
                    "outputParameters": [],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "设置成功",
                            "senderId": "afterMenuPageSuccess"
                        }
                    ]
                }
            ],
            "cascade": {
                "messageSender": [],
                "messageReceiver": []
            }
        },
        {
            "id": "tree_menu",
            "title": "树",
            "titleIcon": "right-circle",
            "component": "cnTree",
            "keyId": "ID",
            "async": false,
            "showCheckBox": false,
            "expandAll": false,
            "loadingOnInit": true,
            "showLine": false,
            "rootTitle": "根节点",
            "defaultSelectedConfig": {
                "location": {
                    "locationContent": {
                        "hierarchy": 1,
                        "index": 0,
                        "isLeaf": true
                    }
                },
                "default": {
                    "locationContent": {
                        "hierarchy": 0,
                        "index": 1,
                        "isLeaf": true
                    }
                }
            },
            "loadingConfig": {
                "url": "resource/GET_MENU_LIST/query",
                "method": "get",
                "params": [
                    {
                        "name": "_recursive",
                        "type": "value",
                        "value": true
                    },
                    {
                        "name": "_deep",
                        "type": "value",
                        "value": "-1"
                    },
                    {
                        "name": "_pcName",
                        "type": "value",
                        "value": "MENU_PARENT_ID"
                    }
                ],
                "filter": []
            },
            "expandConfig": {
                "url": "resource/GET_MENU_LIST/query",
                "method": "get",
                "params": [
                    {
                        "name": "_root.MENU_PARENT_ID",
                        "type": "item",
                        "valueName": "key",
                        "value": ""
                    },
                    {
                        "name": "_recursive",
                        "type": "value",
                        "value": true
                    },
                    {
                        "name": "_deep",
                        "type": "value",
                        "value": "2"
                    },
                    {
                        "name": "_pcName",
                        "type": "value",
                        "value": "MENU_PARENT_ID"
                    }
                ]
            },
            "columns": [
                {
                    "title": "ID",
                    "type": "key",
                    "field": "ID"
                },
                {
                    "title": "PID",
                    "type": "parentId",
                    "field": "PID"
                },
                {
                    "title": "NAME",
                    "type": "title",
                    "field": "TEXT"
                }
            ],
            "cascade": {
                "messageSender": [
                    {
                        "id": "grid_sender_02",
                        "senderId": "tree_menu",
                        "triggerType": "BEHAVIOR",
                        "trigger": "CLICK_NODE",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "REFRESH_AS_CHILD",
                                "params": [
                                    {
                                        "name": "MENU_CODE",
                                        "type": "item",
                                        "valueName": "MENU_CODE"
                                    },
                                    {
                                        "name": "TYPE",
                                        "type": "item",
                                        "valueName": "TYPE"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "aftetMenuSaveSuccessfully",
                        "senderId": "tree_menu",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "type",
                                        "type": "value",
                                        "value": "success"
                                    },
                                    {
                                        "name": "code",
                                        "type": "value",
                                        "value": "新增成功"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "APPEND_CHILD_TO_SELECTED_NODE",
                                "params": [
                                    {
                                        "name": "ID",
                                        "type": "addedRows",
                                        "valueName": "ID"
                                    },
                                    {
                                        "name": "NAME",
                                        "type": "addedRows",
                                        "valueName": "NAME"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "afterMenuEditSuccessfully",
                        "senderId": "tree_menu",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "type",
                                        "type": "value",
                                        "value": "success"
                                    },
                                    {
                                        "name": "code",
                                        "type": "value",
                                        "value": "编辑成功"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "UPDATE_SELECTED_NODE",
                                "params": [
                                    {
                                        "name": "ID",
                                        "type": "addedRows",
                                        "valueName": "ID"
                                    },
                                    {
                                        "name": "NAME",
                                        "type": "addedRows",
                                        "valueName": "MENU_NAME"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "afterMenuDeleteSuccessfully",
                        "senderId": "tree_menu",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "message",
                                        "type": "returnValue",
                                        "valueName": "MESSAGE"
                                    },
                                    {
                                        "name": "type",
                                        "type": "returnValue",
                                        "valueName": "MESSAGE_TYPE"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "DELETE_SELECTED_NODE",
                                "params": [
                                    {
                                        "name": "ID",
                                        "type": "item",
                                        "valueName": "ID"
                                    }
                                ],
                                "preCondition": {
                                    "caseValue": {
                                        "type": "successData",
                                        "valueName": "MESSAGE_TYPE",
                                        "value": "warning"
                                    }
                                }
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "REFRESH_AS_CHILD",
                                "params": [
                                    {
                                        "name": "PID",
                                        "type": "value",
                                        "valueName": "ID",
                                        "value": "-999"
                                    }
                                ],
                                "preCondition": {
                                    "caseValue": {
                                        "type": "successData",
                                        "valueName": "MESSAGE_TYPE",
                                        "value": "warning"
                                    }
                                }
                            }
                        ]
                    }
                ],
                "messageReceiver": [
                    {
                        "id": "s_201",
                        "senderId": "tree_menu",
                        "receiveData": [
                            {
                                "triggerType": "ACTION",
                                "trigger": "APPEND_CHILD_TO_SELECTED_NODE"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "ACTION",
                                "trigger": "MESSAGE"
                            },
                            {
                                "triggerType": "ACTION",
                                "trigger": "UPDATE_SELECTED_NODE"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "REFRESH"
                            },
                            {
                                "triggerType": "BEHAVIOR",
                                "trigger": "DELETE_SELECTED_NODE"
                            }
                        ]
                    }
                ]
            },
            "rowActions": [],
            "dialog": [],
            "condition": [],
            "ajaxConfig": [],
            "beforeTrigger": [],
            "afterTrigger": []
        },
        {
            "id": "tree_table_page",
            "title": "",
            "titleIcon": "right-circle",
            "component": "cnDataTable",
            "changeValue": [
                {
                    "id": "edit_form_changeValue3",
                    "params": [
                        {
                            "name": "ID",
                            "type": "item",
                            "valueName": "ID",
                            "valueTo": "tempValue"
                        },
                        {
                            "name": "MENU_CODE",
                            "type": "item",
                            "valueName": "MENU_CODE",
                            "valueTo": "tempValue"
                        }
                    ]
                }
            ],
            "keyId": "ID",
            "size": "small",
            "isBordered": false,
            "isFrontPagination": false,
            "isPagination": true,
            "isShowSizeChanger": true,
            "showTotal": true,
            "pageSize": 5,
            "enableDrop": true,
            "showCheckBox": true,
            "pageSizeOptions": [
                10,
                20,
                50,
                100
            ],
            "loadingOnInit": false,
            "loadingConfig": {
                "url": "resource/GET_MENU_PAGE_LIST/query",
                "method": "get",
                "params": [
                    {
                        "name": "MENU_CODE",
                        "type": "tempValue",
                        "valueName": "MENU_CODE"
                    }
                ],
                "filter": []
            },
            "loadingItemConfig": {
                "url": "resource/GET_MENU_PAGE_LIST/query",
                "method": "get",
                "params": [
                    {
                        "name": "ID",
                        "type": "item",
                        "valueName": "ID"
                    }
                ]
            },
            "showCheckBoxConfig": {
                "width": "50px",
                "offsetLeft": "0px",
                "offsetRight": null
            },
            "columns": [
                {
                    "title": "ID",
                    "type": "field",
                    "field": "ID",
                    "hidden": true,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "MENU_CODE",
                    "type": "field",
                    "field": "MENU_CODE",
                    "hidden": true,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "页面名称",
                    "type": "field",
                    "width": "20%",
                    "field": "NAME",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "expand": true,
                    "style": {}
                },
                {
                    "title": "页面编码",
                    "type": "field",
                    "field": "PAGE_CODE",
                    "width": "20%",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "排序",
                    "type": "field",
                    "field": "SORT",
                    "width": "20%",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "状态",
                    "type": "field",
                    "field": "STATE_TEXT",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "width": "20%",
                    "style": {},
                    "custom": {
                        "type": "tag",
                        "field": "STATE_TEXT",
                        "dataMapping": [
                            {
                                "color": "#87d068",
                                "field": "STATE_TEXT",
                                "value": "启用"
                            },
                            {
                                "color": "#2db7f5",
                                "field": "STATE_TEXT",
                                "value": "禁用"
                            }
                        ]
                    }
                },
                {
                    "title": "操作",
                    "type": "action",
                    "width": "80px",
                    "actionIds": [
                        "data_table_edit",
                        "data_table_delete",
                        "data_table_enabled",
                        "data_table_disabled"
                    ]
                }
            ],
            "rowActions": [
                {
                    "id": "data_table_edit",
                    "state": "text",
                    "text": "编辑",
                    "icon": "edit",
                    "color": "text-primary",
                    "type": "link",
                    "size": "small",
                    "execute": [
                        {
                            "triggerType": "ACTION",
                            "trigger": "DIALOG",
                            "dialogId": "edit_table_form2",
                            "ajaxId": "form_edit_menu_page",
                            "changeValueId": "edit_form_changeValue3"
                        }
                    ]
                },
                {
                    "id": "data_table_enabled",
                    "state": "text",
                    "text": "启用",
                    "icon": "edit",
                    "color": "text-primary",
                    "type": "link",
                    "size": "small",
                    "execute": [
                        {
                            "triggerType": "ACTION",
                            "trigger": "CONFIRM",
                            "dialogId": "data_table_enabled_confirm",
                            "ajaxId": "menu_page_enabled_ajax"
                        }
                    ]
                },
                {
                    "id": "data_table_disabled",
                    "state": "text",
                    "text": "禁用",
                    "icon": "edit",
                    "color": "text-primary",
                    "type": "link",
                    "size": "small",
                    "execute": [
                        {
                            "triggerType": "ACTION",
                            "trigger": "CONFIRM",
                            "dialogId": "data_table_disabled_confirm",
                            "ajaxId": "menu_page_disabled_ajax"
                        }
                    ]
                },
                {
                    "id": "data_table_delete",
                    "state": "text",
                    "text": "删除",
                    "icon": "delete",
                    "type": "link",
                    "color": "primary",
                    "size": "small",
                    "execute": [
                        {
                            "triggerType": "ACTION",
                            "trigger": "CONFIRM",
                            "dialogId": "delete_menu_page_confirm",
                            "ajaxId": "data_table_menu_page_delete"
                        }
                    ]
                }
            ],
            "dialog": [
                {
                    "id": "edit_table_form2",
                    "type": "confirm",
                    "title": "菜单_页面设置",
                    "cancelText": "取消",
                    "okText": "确定",
                    "form": {
                        "id": "form_02",
                        "type": "form",
                        "component": "form",
                        "state": "new",
                        "loadingConfig": {
                            "id": "loadMenuPageEditForm"
                        },
                        "formLayout": {
                            "id": "Module_D_Layout",
                            "type": "layout",
                            "title": "表单布局",
                            "rows": [
                                {
                                    "id": "fier5634k",
                                    "type": "row",
                                    "cols": [
                                        {
                                            "id": "menu_page_page_col",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "menu_page_page_ctrl"
                                            }
                                        },
                                        {
                                            "id": "menu_page_parent_col",
                                            "col": "cc",
                                            "type": "col",
                                            "title": "列iHspYn",
                                            "span": 24,
                                            "layoutContain": "input",
                                            "size": {
                                                "nzXs": 24,
                                                "nzSm": 24,
                                                "nzMd": 24,
                                                "nzLg": 24,
                                                "ngXl": 24,
                                                "nzXXl": 24
                                            },
                                            "control": {
                                                "id": "menu_page_parent_ctrl"
                                            }
                                        }
                                    ]
                                }
                            ]
                        },
                        "formControls": [
                            {
                                "id": "menu_page_page_ctrl",
                                "hidden": false,
                                "title": "关联页面",
                                "titleConfig": {
                                    "required": true
                                },
                                "field": "PAGE_CODE",
                                "labelSize": {
                                    "span": 4,
                                    "nzXs": {
                                        "span": 4
                                    },
                                    "nzSm": {
                                        "span": 4
                                    },
                                    "nzMd": {
                                        "span": 4
                                    },
                                    "nzLg": {
                                        "span": 4
                                    },
                                    "ngXl": {
                                        "span": 4
                                    },
                                    "nzXXl": {
                                        "span": 4
                                    }
                                },
                                "controlSize": {
                                    "span": 18,
                                    "nzXs": 18,
                                    "nzSm": 18,
                                    "nzMd": 18,
                                    "nzLg": 18,
                                    "ngXl": 18,
                                    "nzXXl": 18
                                },
                                "state": "edit",
                                "text": {
                                    "type": "label",
                                    "field": "PAGE_CODE"
                                },
                                "editor": {
                                    "type": "treeSelect",
                                    "field": "PAGE_CODE",
                                    "placeholder": "请输入",
                                    "asyncData": false,
                                    "keyId": "ID",
                                    "loadingConfig": {
                                        "id": "loadPageTree"
                                    },
                                    "expandConfig": {
                                        "id": "loadPageTreeExpand"
                                    },
                                    "loadingItemConfig": {
                                        "id": "loadMenuPageitem"
                                    },
                                    "columns": [
                                        {
                                            "title": "ID",
                                            "type": "key",
                                            "field": "CODE"
                                        },
                                        {
                                            "title": "PID",
                                            "type": "parentId",
                                            "field": "PID"
                                        },
                                        {
                                            "title": "NAME",
                                            "type": "title",
                                            "field": "NAME"
                                        }
                                    ]
                                }
                            }
                        ],
                        "formControlsPermissions": [
                            {
                                "formState": "edit",
                                "formStateContent": {
                                    "isLoad": true,
                                    "loadAjax": {},
                                    "isDefault": true
                                },
                                "Controls": [
                                    {
                                        "id": "menu_page_page_ctrl",
                                        "state": "edit",
                                        "hidden": false,
                                        "readOnly": false
                                    }
                                ]
                            }
                        ],
                        "ajaxConfig": [
                            {
                                "id": "loadMenuPageitem",
                                "url": "resource/GET_SMT_PAGE_LAYOUT_TREE/query",
                                "urlType": "inner",
                                "ajaxType": "get",
                                "params": [
                                    {
                                        "name": "ID",
                                        "type": "componentValue",
                                        "valueName": "value"
                                    }
                                ],
                                "outputParameters": [],
                                "result": []
                            },
                            {
                                "id": "loadPageTree",
                                "url": "resource/GET_FUNC_PAGE_TREE/query",
                                "urlType": "inner",
                                "ajaxType": "get",
                                "params": [
                                    {
                                        "name": "_recursive",
                                        "type": "value",
                                        "value": true
                                    },
                                    {
                                        "name": "_deep",
                                        "type": "value",
                                        "value": "2"
                                    },
                                    {
                                        "name": "_pcName",
                                        "type": "value",
                                        "value": "PID"
                                    }
                                ],
                                "outputParameters": [],
                                "result": []
                            },
                            {
                                "id": "loadPageTreeExpand",
                                "url": "resource/GET_SMT_PAGE_LAYOUT_TREE/query",
                                "urlType": "inner",
                                "ajaxType": "get",
                                "params": [
                                    {
                                        "name": "_recursive",
                                        "type": "value",
                                        "value": true
                                    },
                                    {
                                        "name": "_deep",
                                        "type": "value",
                                        "value": "-1"
                                    },
                                    {
                                        "name": "_pcName",
                                        "type": "value",
                                        "value": "PID"
                                    },
                                    {
                                        "name": "_root.PID",
                                        "type": "item",
                                        "valueName": "key"
                                    }
                                ],
                                "outputParameters": [],
                                "result": []
                            },
                            {
                                "id": "loadMenuPageTree",
                                "url": "resource/GET_MENU_PAGE_TREE/query",
                                "urlType": "inner",
                                "ajaxType": "get",
                                "params": [
                                    {
                                        "name": "_recursive",
                                        "type": "value",
                                        "value": true
                                    },
                                    {
                                        "name": "_deep",
                                        "type": "value",
                                        "value": "-1"
                                    },
                                    {
                                        "name": "_pcName",
                                        "type": "value",
                                        "value": "PARENT_ID"
                                    },
                                    {
                                        "name": "_root.MENU_CODE",
                                        "type": "tempValue",
                                        "valueName": "MENU_CODE"
                                    }
                                ],
                                "outputParameters": [],
                                "result": []
                            },
                            {
                                "id": "loadMenuPageEditForm",
                                "url": "resource/SMT_MENU_PAGE_REL/query",
                                "urlType": "inner",
                                "ajaxType": "get",
                                "params": [
                                    {
                                        "name": "ID",
                                        "type": "tempValue",
                                        "valueName": "ID"
                                    }
                                ]
                            }
                        ]
                    }
                },
                {
                    "id": "data_table_enabled_confirm",
                    "type": "confirm",
                    "title": "确认操作",
                    "content": "是否启用后当前页面设置?",
                    "cancelText": "取消",
                    "okText": "确认"
                },
                {
                    "id": "data_table_disabled_confirm",
                    "type": "confirm",
                    "title": "确认操作",
                    "content": "是否禁用前页面设置?",
                    "cancelText": "取消",
                    "okText": "确认"
                },
                {
                    "id": "delete_menu_page_confirm",
                    "type": "confirm",
                    "title": "确认操作",
                    "content": "是否删除当前操作数据?",
                    "cancelText": "取消",
                    "okText": "确认"
                }
            ],
            "cascade": {
                "messageSender": [
                    {
                        "id": "grid_sender_02",
                        "senderId": "tree_menu",
                        "triggerType": "BEHAVIOR",
                        "trigger": "CLICK_NODE",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "REFRESH_AS_CHILD",
                                "params": [
                                    {
                                        "name": "PID",
                                        "type": "item",
                                        "valueName": "ID"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "afterMenuPageSuccess",
                        "senderId": "tree_table_page",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "type",
                                        "type": "value",
                                        "value": "success"
                                    },
                                    {
                                        "name": "code",
                                        "type": "value",
                                        "value": "新增成功"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "LOAD_REFRESH_DATA",
                                "params": [
                                    {
                                        "name": "ID",
                                        "type": "returnValue",
                                        "valueName": "ID"
                                    }
                                ],
                                "preCondition": {
                                    "caseValue": {
                                        "type": "successData",
                                        "valueName": "PARENT_ID",
                                        "hasProperty": true,
                                        "matchValue": null,
                                        "condition": "eq"
                                    }
                                }
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "LOAD_REFRESH_CHILDREN_DATA",
                                "params": [
                                    {
                                        "name": "ID",
                                        "type": "returnValue",
                                        "valueName": "ID"
                                    }
                                ],
                                "preCondition": {
                                    "caseValue": {
                                        "type": "successData",
                                        "valueName": "PARENT_ID",
                                        "hasProperty": true,
                                        "matchValue": null,
                                        "condition": "neq"
                                    }
                                }
                            }
                        ]
                    },
                    {
                        "id": "afterDeleteMenuPageSuccess",
                        "senderId": "tree_table_page",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "message",
                                        "type": "returnValue",
                                        "valueName": "MESSAGE"
                                    },
                                    {
                                        "name": "type",
                                        "type": "returnValue",
                                        "valueName": "MESSAGE_TYPE"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "DELETE_CURRENT_ROW",
                                "params": [
                                    {
                                        "name": "ID",
                                        "type": "currentRow",
                                        "valueName": "ID"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "afterEditMenuPageSuccess",
                        "senderId": "tree_table_page",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "type",
                                        "type": "value",
                                        "value": "success"
                                    },
                                    {
                                        "name": "code",
                                        "type": "value",
                                        "value": "编辑成功"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "LOAD_REFRESH_DATA",
                                "params": [
                                    {
                                        "name": "ID",
                                        "type": "addedRows",
                                        "valueName": "ID"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "afterTableModelingSaveSuccess",
                        "senderId": "tree_table_page",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "type",
                                        "type": "value",
                                        "value": "success"
                                    },
                                    {
                                        "name": "code",
                                        "type": "value",
                                        "value": "操作成功"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "LOAD_REFRESH_DATA",
                                "params": [
                                    {
                                        "name": "ID",
                                        "type": "addedRows",
                                        "valueName": "ID"
                                    }
                                ]
                            }
                        ]
                    }
                ],
                "messageReceiver": [
                    {
                        "id": "01",
                        "senderId": "tree_menu",
                        "receiveData": [
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "REFRESH_AS_CHILD",
                                "params": [
                                    {
                                        "pname": "MENU_CODE",
                                        "cname": "MENU_CODE",
                                        "valueTo": "tempValue"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "02",
                        "senderId": "tree_table_page",
                        "receiveData": [
                            {
                                "beforeReceive": [],
                                "triggerType": "ACTION",
                                "trigger": "MESSAGE"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "REFRESH"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "LOAD_REFRESH_DATA"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "LOAD_REFRESH_CHILDREN_DATA"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "ACTION",
                                "trigger": "DELETE_CURRENT_ROW"
                            }
                        ]
                    }
                ]
            },
            "condition": [],
            "ajaxConfig": [
                {
                    "id": "form_edit_menu_page",
                    "url": "resource/SMT_MENU_PAGE_REL/update",
                    "urlType": "inner",
                    "ajaxType": "put",
                    "params": [
                        {
                            "name": "ID",
                            "type": "tempValue",
                            "valueName": "ID"
                        },
                        {
                            "name": "PAGE_CODE",
                            "type": "componentValue",
                            "valueName": "PAGE_CODE"
                        },
                        {
                            "name": "MENU_CODE",
                            "type": "tempValue",
                            "valueName": "MENU_CODE"
                        }
                    ],
                    "outputParameters": [],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "编辑成功",
                            "senderId": "afterEditMenuPageSuccess"
                        }
                    ]
                },
                {
                    "id": "data_table_menu_page_delete",
                    "url": "resource/DEL_MENU_PAGE_REL_PROC/operate",
                    "urlType": "inner",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "ID",
                            "type": "item",
                            "valueName": "ID"
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        }
                    ],
                    "outputParameters": [],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "删除成功",
                            "senderId": "afterDeleteMenuPageSuccess"
                        }
                    ]
                },
                {
                    "id": "menu_page_enabled_ajax",
                    "url": "resource/SMT_MENU_PAGE_REL/update",
                    "urlType": "inner",
                    "ajaxType": "put",
                    "params": [
                        {
                            "name": "ID",
                            "type": "item",
                            "valueName": "ID"
                        },
                        {
                            "name": "MENU_PAGE_ENABLED",
                            "type": "value",
                            "value": 1
                        }
                    ],
                    "outputParameters": [],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "message.ajax.state.success",
                            "senderId": "afterTableModelingSaveSuccess"
                        }
                    ]
                },
                {
                    "id": "menu_page_disabled_ajax",
                    "url": "resource/SMT_MENU_PAGE_REL/update",
                    "urlType": "inner",
                    "ajaxType": "put",
                    "params": [
                        {
                            "name": "ID",
                            "type": "item",
                            "valueName": "ID"
                        },
                        {
                            "name": "MENU_PAGE_ENABLED",
                            "type": "value",
                            "value": 2
                        }
                    ],
                    "outputParameters": [],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "message.ajax.state.success",
                            "senderId": "afterTableModelingSaveSuccess"
                        }
                    ]
                }
            ]
        }
    ]
}'
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'LAYOUT_SYSTEM_MANEGER_MENU'
	SET @PAGE_CODE = 'PAGE_SYSTEM_MANEGER_MENU'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = '系统菜单'
    SET @SORT = 9
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END

BEGIN
    SET @PAGE_JSON = '{
    "layoutJson": {
        "id": "Add_User_Role",
        "type": "layout",
        "container": "rows",
        "rows": [
            {
                "id": "Add_User_Role_rows",
                "type": "row",
                "title": "行",
                "container": "cols",
                "cols": [
                    {
                        "id": "Add_User_Role_clos_1",
                        "col": "cc",
                        "type": "col",
                        "titlestate": 1,
                        "title": "",
                        "span": 24,
                        "container": "component",
                        "header": {
                            "title": "角色信息",
                            "icon": "",
                            "id": "button_add_resource_user_link"
                        },
                        "size": {
                            "nzXs": 24,
                            "nzSm": 24,
                            "nzMd": 24,
                            "nzLg": 24,
                            "ngXl": 24,
                            "nzXXl": 24
                        },
                        "bodyStyle": {
                            "min-height": "400px"
                        },
                        "component": {
                            "id": "system_role_user_table",
                            "type": "cnDataTable",
                            "title": "",
                            "container": "cnDataTable"
                        }
                    }
                ]
            }
        ],
        "cascade": {
            "messageSender": [],
            "messageReceiver": []
        }
    },
    "componentsJson": [
        {
            "id": "button_add_resource_user_link",
            "component": "cnToolbar",
            "size": "small",
            "changeValue": [
                {
                    "id": "edit_form_changeValue",
                    "params": [
                        {
                            "name": "USER_ID",
                            "type": "item",
                            "valueName": "ID",
                            "valueTo": "tempValue"
                        }
                    ]
                }
            ],
            "dialog": [],
            "toolbar": [
                {
                    "targetViewId": "system_role_user_table",
                    "group": [
                        {
                            "id": "addResourceUserLink",
                            "text": "保存",
                            "icon": "plus",
                            "color": "primary",
                            "state": "new",
                            "hidden": true,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_ROWS_IDS",
                                    "ajaxId": "addRoleLinkToUser",
                                    "changeValueId1": "edit_form_changeValue"
                                }
                            ],
                            "toggle": {
                                "type": "state",
                                "toggleProperty": "hidden",
                                "values": [
                                    {
                                        "name": "new",
                                        "value": true
                                    },
                                    {
                                        "name": "edit",
                                        "value": true
                                    },
                                    {
                                        "name": "text",
                                        "value": true
                                    }
                                ]
                            }
                        },
                        {
                            "id": "removeResourceUserLink",
                            "text": "移除",
                            "icon": "plus",
                            "color": "primary",
                            "state": "new",
                            "hidden": true,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_ROWS_IDS",
                                    "ajaxId": "removeRoleLinkToUser",
                                    "changeValueId1": "edit_form_changeValue"
                                }
                            ],
                            "toggle": {
                                "type": "state",
                                "toggleProperty": "hidden",
                                "values": [
                                    {
                                        "name": "new",
                                        "value": true
                                    },
                                    {
                                        "name": "edit",
                                        "value": true
                                    },
                                    {
                                        "name": "text",
                                        "value": true
                                    }
                                ]
                            }
                        }
                    ]
                }
            ],
            "ajaxConfig": [
                {
                    "id": "addRoleLinkToUser",
                    "url": "resource/ADD_ROLE_TO_USER/operate",
                    "urlType": "inner",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "ROLE_IDS",
                            "type": "checkedItem",
                            "valueName": "ids"
                        },
                        {
                            "name": "USER_ID",
                            "type": "tempValue",
                            "valueName": "ID"
                        }
                    ],
                    "outputParameters": [],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "message.ajax.state.success",
                            "senderId": "afterRoleLinkSaveSuccessfully"
                        }
                    ]
                },
                {
                    "id": "removeRoleLinkToUser",
                    "url": "resource/REMOVE_ROLE_TO_USER/operate",
                    "urlType": "inner",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "ROLE_IDS",
                            "type": "checkedItem",
                            "valueName": "ids"
                        },
                        {
                            "name": "USER_ID",
                            "type": "tempValue",
                            "valueName": "ID"
                        }
                    ],
                    "outputParameters": [],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "message.ajax.state.success",
                            "senderId": "afterRoleLinkRemoveSuccessfully"
                        }
                    ]
                }
            ],
            "linkConfig": [
                {
                    "id": "linkToForm",
                    "link": "/template/dynamic/1Vxbgwvx8Gs6VDydw0UTAzugv027d1NQ",
                    "params": [
                        {
                            "name": "PID",
                            "type": "tempValue",
                            "valueName": "PID"
                        }
                    ]
                }
            ],
            "cascade": {
                "messageSender": [],
                "messageReceiver": [
                    {
                        "id": "afterAddRoleToUserSuccess",
                        "senderId": "system_user_table",
                        "receiveData": [
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "EXECUTE_ACTION",
                                "params": [
                                    {
                                        "pname": "toolbarId",
                                        "cname": "toolbarId",
                                        "valueTo": "tempValue"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "afterRemoveResourceUserLink_User",
                        "senderId": "system_user_table",
                        "receiveData": [
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "EXECUTE_ACTION",
                                "params": [
                                    {
                                        "pname": "toolbarId",
                                        "cname": "toolbarId",
                                        "valueTo": "tempValue"
                                    }
                                ]
                            }
                        ]
                    }
                ]
            }
        },
        {
            "id": "system_role_user_table",
            "title": "",
            "titleIcon": "right-circle",
            "component": "cnDataTable",
            "keyId": "ID",
            "changeValue": [],
            "size": "large",
            "isBordered": false,
            "isFrontPagination": false,
            "isPagination": true,
            "isShowSizeChanger": true,
            "showTotal": true,
            "pageSize": 10,
            "showCheckBox": true,
            "pageSizeOptions": [
                10,
                20,
                50,
                100
            ],
            "loadingOnInit": true,
            "loadingConfig": {
                "url": "resource/GET_USER_ROLE_LIST/query",
                "method": "get",
                "params": [
                    {
                        "name":"_sort",
                        "type":"value",
                        "value":"SORT ASC"
                    }
                ],
                "filter": [
                    {
                        "name":"USER_ID",
                        "type":"tempValue",
                        "valueName":"ID"
                    }
                ]
            },
            "columns": [
                {
                    "title": "ID",
                    "type": "field",
                    "field": "ID",
                    "hidden": true,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "角色姓名",
                    "type": "field",
                    "field": "NAME",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "角色编号",
                    "type": "field",
                    "field": "CODE",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "角色描述",
                    "type": "field",
                    "field": "DESCRIPTION",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "角色关联状态",
                    "type": "field",
                    "field": "USER_IDENTI",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "style": {},
                    "custom": {
                        "type": "tag",
                        "field": "USER_IDENTI",
                        "dataMapping": [
                            {
                                "color": "#6699FF",
                                "field": "USER_IDENTI",
                                "value": "已拥有"
                            },
                            {
                                "color": "#FF0033",
                                "field": "USER_IDENTI",
                                "value": "未拥有"
                            }
                        ]
                    }
                }
            ],
            "rowActions": [],
            "window": [],
            "dialog": [],
            "linkConfig": [],
            "cascade": {
                "messageSender": [
                    {
                        "id": "afterRoleLinkSaveSuccessfully",
                        "senderId": "system_role_user_table",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "system_role_user_table",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "type",
                                        "type": "value",
                                        "value": "success"
                                    },
                                    {
                                        "name": "code",
                                        "type": "value",
                                        "value": "新增成功"
                                    },
                                    {
                                        "name": "field",
                                        "type": "value",
                                        "value": "提示"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "system_role_user_table",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "REFRESH",
                                "params": []
                            }
                        ]
                    },
                    {
                        "id": "afterRoleLinkRemoveSuccessfully",
                        "senderId": "system_role_user_table",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "system_role_user_table",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "type",
                                        "type": "value",
                                        "value": "success"
                                    },
                                    {
                                        "name": "code",
                                        "type": "value",
                                        "value": "移除成功"
                                    },
                                    {
                                        "name": "field",
                                        "type": "value",
                                        "value": "提示"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "system_role_user_table",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "REFRESH",
                                "params": []
                            }
                        ]
                    }
                ],
                "messageReceiver": [
                    {
                        "id": "receiveTableMessage",
                        "senderId": "system_role_user_table",
                        "receiveData": [
                            {
                                "beforeReceive": [],
                                "triggerType": "ACTION",
                                "trigger": "MESSAGE"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "LOAD_REFRESH_DATA"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "ACTION",
                                "trigger": "REFRESH"
                            }
                        ]
                    }
                ]
            },
            "condition": [],
            "ajaxConfig": []
        }
    ]
}'
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'LAYOUT_SYSTEM_MANEGER_USER_ADD'
	SET @PAGE_CODE = 'PAGE_SYSTEM_MANEGER_USER_ADD'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = '分配角色'
    SET @SORT = 10
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END

BEGIN
    SET @PAGE_JSON = '{
    "layoutJson": {
        "id": "Module_layout",
        "type": "layout",
        "title": "布局",
        "container": "rows",
        "rows": [
            {
                "cols": [
                    {
                        "id": "col_tree_menu",
                        "col": "cc",
                        "type": "col",
                        "titlestate": 1,
                        "title": "",
                        "span": 6,
                        "container": "component",
                        "header": {
                            "title": "菜单",
                            "icon": "",
                            "id": "btn_menu_auth"
                        },
                        "size": {
                            "nzXs": 6,
                            "nzSm": 6,
                            "nzMd": 6,
                            "nzLg": 6,
                            "ngXl": 6,
                            "nzXXl": 6
                        },
                        "bodyStyle": {
                            "min-height": "600px",
                            "max-height": "600px",
                            "overflow-y": "auto"
                        },
                        "component": {
                            "id": "tree_menu",
                            "type": "cnTree",
                            "title": "",
                            "container": "cnTree"
                        }
                    },
                    {
                        "id": "col_menu_page_table",
                        "col": "cc",
                        "type": "col",
                        "titlestate": 1,
                        "title": "",
                        "span": 18,
                        "container": "component",
                        "header": {
                            "title": "菜单_页面",
                            "icon": "",
                            "id": ""
                        },
                        "size": {
                            "nzXs": 18,
                            "nzSm": 18,
                            "nzMd": 18,
                            "nzLg": 18,
                            "ngXl": 18,
                            "nzXXl": 18
                        },
                        "bodyStyle": {
                            "min-height": "600px",
                            "max-height": "650px"
                        },
                        "component": {
                            "id": "tree_table_page",
                            "type": "cnDataTable",
                            "title": "",
                            "container": "cnDataTable"
                        }
                    }
                ],
                "id": "Modu_rows",
                "type": "row",
                "title": "行",
                "container": "cols"
            }
        ]
    },
    "componentsJson": [
        {
            "id": "btn_menu_auth",
            "component": "cnToolbar",
            "size": "small",
            "changeValue": [
                {
                    "id": "edit__menu_form_changeValue",
                    "params": [
                        {
                            "name": "ID",
                            "type": "item",
                            "valueName": "ID",
                            "valueTo": "tempValue"
                        }
                    ]
                }
            ],
            "dialog": [],
            "condition": [],
            "beforeTrigger": [],
            "afterTrigger": [],
            "toolbar": [
                {
                    "id":"a001",
                    "targetViewId": "tree_menu",
                    "text": "授权设置",
                    "dropdown": [
                        {
                            "id": "M_refresh",
                            "text": "刷新",
                            "icon": "reload",
                            "color": "text-primary",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "BEHAVIOR",
                                    "trigger": "REFRESH"
                                }
                            ]
                        },
                        {
                            "id": "set_module_readable",
                            "text": "显示菜单",
                            "icon": "eye",
                            "color": "text-red-light",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_NODES_BY_ID",
                                    "ajaxId": "set_module_readable"
                                }
                            ]
                        },
                        {
                            "id": "btn_hidden_menu",
                            "text": "隐藏菜单",
                            "icon": "eye-invisible",
                            "color": "text-red-light",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_NODES_BY_ID",
                                    "ajaxId": "set_module_not_readable"
                                }
                            ]
                        },
                        {
                            "id": "btn_cancel_auth",
                            "text": "取消授权",
                            "icon": "delete",
                            "color": "text-red-light",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_NODES_BY_ID",
                                    "ajaxId": "set_module_none_readable"
                                }
                            ]
                        }
                    ]
                }
            ],
            "ajaxConfig": [
                {
                    "id": "set_module_readable",
                    "url": "resource/SET_AUTH_MENU_R_FLAG_PROC/operate",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "MENU_IDS",
                            "type": "item",
                            "valueName": "ids"
                        },
                        {
                            "name": "MESSAGE_AUTH_FLAG",
                            "type": "value",
                            "value": -1
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_TYPE",
                            "type": "value",
                            "value": "menu"
                        },
                        {
                            "name": "AUTH_FLAG",
                            "type": "value",
                            "value": 1
                        },
                        {
                            "name": "AUTH_PERMISSION_TYPE",
                            "type": "tempValue",
                            "valueName": "AUTH_PERMISSION_TYPE"
                        },
                        {
                            "name": "AUTH_PERMISSION_CONTENT",
                            "type": "tempValue",
                            "valueName": "ROLE_CODE"
                        }
                    ],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "设置成功",
                            "senderId": "afterSetAuthMenuFlagSuccess"
                        }
                    ]
                },
                {
                    "id": "set_module_not_readable",
                    "url": "resource/SET_AUTH_MENU_R_FLAG_PROC/operate",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "MENU_IDS",
                            "type": "item",
                            "valueName": "ids"
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_TYPE",
                            "type": "value",
                            "value": "menu"
                        },
                        {
                            "name": "AUTH_FLAG",
                            "type": "value",
                            "value": 2
                        },
                        {
                            "name": "AUTH_PERMISSION_TYPE",
                            "type": "tempValue",
                            "valueName": "AUTH_PERMISSION_TYPE"
                        },
                        {
                            "name": "AUTH_PERMISSION_CONTENT",
                            "type": "tempValue",
                            "valueName": "ROLE_CODE"
                        }
                    ],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "设置成功",
                            "senderId": "afterSetAuthMenuFlagSuccess"
                        }
                    ]
                },
                {
                    "id": "set_module_none_readable",
                    "url": "resource/SET_AUTH_MENU_R_FLAG_PROC/operate",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "MENU_IDS",
                            "type": "item",
                            "valueName": "ids"
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_TYPE",
                            "type": "value",
                            "value": "menu"
                        },
                        {
                            "name": "AUTH_FLAG",
                            "type": "value",
                            "value": 0
                        },
                        {
                            "name": "AUTH_PERMISSION_TYPE",
                            "type": "tempValue",
                            "valueName": "AUTH_PERMISSION_TYPE"
                        },
                        {
                            "name": "AUTH_PERMISSION_CONTENT",
                            "type": "tempValue",
                            "valueName": "ROLE_CODE"
                        }
                    ],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "设置成功",
                            "senderId": "afterSetAuthMenuFlagSuccess"
                        }
                    ]
                }
            ],
            "cascade": {
                "messageSender": [],
                "messageReceiver": []
            }
        },
        {
            "id": "tree_menu",
            "title": "树",
            "titleIcon": "right-circle",
            "component": "cnTree",
            "keyId": "ID",
            "async": true,
            "showCheckBox": true,
            "expandAll": false,
            "loadingOnInit": true,
            "showLine": false,
            "rootTitle": "根节点",
            "enableState": true,
		    "checkStrictlyShow":true, 
            "checkStrictly":false,
            "loadingConfig": {
                "url": "resource/GET_MENU_AUTH_TREE/query",
                "method": "get",
                "params": [
                    {
                        "name": "_recursive",
                        "type": "value",
                        "value": true
                    },
                    {
                        "name": "_deep",
                        "type": "value",
                        "value": "-1"
                    },
                    {
                        "name": "_pcName",
                        "type": "value",
                        "value": "PID"
                    },
                    {
                        "name": "ROLE_CODE",
                        "type": "tempValue",
                        "valueName": "ROLE_CODE"
                    }
                ],
                "filter": []
            },
            "expandConfig": {
                "url": "resource/GET_MENU_AUTH_TREE/query",
                "method": "get",
                "params": [
                    {
                        "name": "_root.PID",
                        "type": "item",
                        "valueName": "key",
                        "value": ""
                    },
                    {
                        "name": "_recursive",
                        "type": "value",
                        "value": true
                    },
                    {
                        "name": "_deep",
                        "type": "value",
                        "value": "2"
                    },
                    {
                        "name": "_pcName",
                        "type": "value",
                        "value": "PID"
                    },
                    {
                        "name": "ROLE_CODE",
                        "type": "tempValue",
                        "valueName": "ROLE_CODE"
                    }
                ]
            },
            "columns": [
                {
                    "title": "ID",
                    "type": "key",
                    "field": "ID"
                },
                {
                    "title": "PID",
                    "type": "parentId",
                    "field": "PID"
                },
                {
                    "title": "NAME",
                    "type": "title",
                    "field": "NAME"
                }
            ],
            "cascade": {
                "messageSender": [
                    {
                        "id": "grid_sender_02",
                        "senderId": "tree_menu",
                        "triggerType": "BEHAVIOR",
                        "trigger": "CLICK_NODE",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "REFRESH_AS_CHILD",
                                "params": [
                                    {
                                        "name": "MENU_ID",
                                        "type": "item",
                                        "valueName": "ID"
                                    },
                                    {
                                        "name": "TYPE",
                                        "type": "item",
                                        "valueName": "TYPE"
                                    },
                                    {
                                        "name": "MENU_CODE",
                                        "type": "item",
                                        "valueName": "CODE"
                                    },
                                    {
                                        "name": "AUFU_READ",
                                        "type": "item",
                                        "valueName": "AUFU_READ"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "afterSetAuthMenuFlagSuccess",
                        "senderId": "tree_menu",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "tree_menu",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "message",
                                        "type": "returnValue",
                                        "valueName": "MESSAGE"
                                    },
                                    {
                                        "name": "type",
                                        "type": "returnValue",
                                        "valueName": "MESSAGE_TYPE"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "tree_menu",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "CHANGE_CHECKED_NODE_DATA",
                                "params": [
                                    {
                                        "name": "AUFU_READ",
                                        "type": "returnValue",
                                        "valueName": "MESSAGE_AUTH_FLAG"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "tree_menu",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "RESELECT_NODE",
                                "params": [
                                    {
                                        "name": "ID",
                                        "type": "item",
                                        "valueName": "key"
                                    }
                                ]
                            }
                        ]
                    }
                ],
                "messageReceiver": [
                    {
                        "id": "s_201",
                        "senderId": "tree_menu",
                        "receiveData": [
                            {
                                "triggerType": "ACTION",
                                "trigger": "APPEND_CHILD_TO_SELECTED_NODE"
                            },
                            {
                                "triggerType": "ACTION",
                                "trigger": "MESSAGE"
                            },
                            {
                                "triggerType": "ACTION",
                                "trigger": "UPDATE_SELECTED_NODE"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "REFRESH"
                            },
                            {
                                "triggerType": "BEHAVIOR",
                                "trigger": "DELETE_SELECTED_NODE"
                            },
                            {
                                "triggerType": "ACTION",
                                "trigger": "CHANGE_CHECKED_NODE_DATA"
                            },
                            {
                                "triggerType": "BEHAVIOR",
                                "trigger": "RESELECT_NODE"
                            }
                        ]
                    }
                ]
            },
            "iconState":[
                {
                    "id": "001",
                    "field": "AUFU_READ", 
                    "position": "left",
                    "iconConfig": {
                        "pre": {
                            "type": "default",
                            "caseValue": {
                                "type": "",  
                                "valueName": "",
                                "regular": "",
                                "value": ""
                            }
                        },
                        "enableLabel": false, 
                        "enableTooltip": true, 
                        "enableIcon": true,
                        "enableDefaultValue": true, 
                        "enableSwitch": false, 
                        "showTheme": "icon", 
                        "enableColor": "", 
                        "enableSelected": false, 
                        "enable": true, 
                        "defaultValue": "003",
                        "initObject": { 
                            "label": "", "color": "green", "value": 1, "icon": "eye"
                        },
                        "options": [  
                            { "label": "", "color": "green", "value": 1, "icon": "eye", "tooltipTitle": "【可见】" },
                            { "label": "", "color": "red", "value": 2, "icon": "eye-invisible", "tooltipTitle": "【不可见】" },
                            { "label": "", "color": "blue", "value": 0, "icon": "file-unknown", "tooltipTitle": "【未设置】" }
                        ]
                    }
                }
            ],
            "rowActions": [],
            "dialog": [],
            "condition": [],
            "ajaxConfig": [],
            "beforeTrigger": [],
            "afterTrigger": []
        },
        {
            "id": "tree_table_page",
            "title": "",
            "titleIcon": "right-circle",
            "component": "cnDataTable",
            "changeValue": [
                {
                    "id": "edit_form_changeValue3",
                    "params": [
                        {
                            "name": "PAGE_ID",
                            "type": "item",
                            "valueName": "ID",
                            "valueTo": "tempValue"
                        },
                        {
                            "name": "MENU_ID",
                            "type": "item",
                            "valueName": "MENU_ID",
                            "valueTo": "tempValue"
                        },
                        {
                            "name": "AUPE_ID",
                            "type": "item",
                            "valueName": "AUPE_ID",
                            "valueTo": "tempValue"
                        },
                        {
                            "name": "ROLE_CODE",
                            "type": "tempValue",
                            "valueName": "ROLE_CODE",
                            "valueTo": "tempValue"
                        },
                        {
                            "name": "PAGE_VERSION",
                            "type": "item",
                            "valueName": "VERSION",
                            "valueTo": "tempValue"
                        }
                    ]
                }
            ],
            "keyId": "ID",
            "size": "middle",
            "isBordered": false,
            "isFrontPagination": false,
            "isPagination": true,
            "isShowSizeChanger": true,
            "showTotal": true,
            "pageSize": 10,
            "enableDrop": true,
            "showCheckBox": true,
            "pageSizeOptions": [
                10,
                20,
                50,
                100
            ],
            "loadingOnInit": false,
            "loadingConfig": {
                "url": "resource/GET_AUTH_PAGE_LIST/query",
                "method": "get",
                "params": [
                    {
                        "name": "MENU_ID",
                        "type": "tempValue",
                        "valueName": "MENU_ID"
                    },
                    {
                        "name": "MENU_CODE",
                        "type": "tempValue",
                        "valueName": "MENU_CODE"
                    },
                    {
                        "name": "OBJ_REF",
                        "type": "tempValue",
                        "valueName": "ROLE_CODE"
                    }
                ],
                "filter": []
            },
            "loadingItemConfig": {
                "url": "resource/GET_MENU_PAGE_TREE/query",
                "method": "get",
                "params": [
                    {
                        "name": "ID",
                        "type": "item",
                        "valueName": "ID"
                    }
                ]
            },
            "showCheckBoxConfig": {
                "width": "50px"
            },
            "scroll": {
                "y": "600px"
            },
            "columns": [
                {
                    "title": "ID",
                    "type": "field",
                    "field": "ID",
                    "hidden": true,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "PID",
                    "type": "field",
                    "field": "PARENT_ID",
                    "hidden": true,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "MENU_ID",
                    "type": "field",
                    "field": "MENU_ID",
                    "hidden": true,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "PAGE_ID",
                    "type": "field",
                    "field": "PAGE_ID",
                    "hidden": true,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "页面名称",
                    "type": "field",
                    "width": "180px",
                    "field": "NAME",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "版本",
                    "type": "field",
                    "width": "180px",
                    "field": "VERSION",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "编码",
                    "type": "field",
                    "field": "MODULE_ICON",
                    "hidden": true,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "菜单状态",
                    "type": "field",
                    "field": "MENU_PAGE_ENABLED_TEXT",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "width": "100px",
                    "style": {},
                    "custom": {
                        "type": "tag",
                        "field": "MENU_PAGE_ENABLED_TEXT",
                        "dataMapping": [
                            {
                                "color": "#87d068",
                                "field": "MENU_PAGE_ENABLED_TEXT",
                                "value": "启用"
                            },
                            {
                                "color": "#2db7f5",
                                "field": "MENU_PAGE_ENABLED_TEXT",
                                "value": "禁用"
                            }
                        ]
                    }
                },
                {
                    "title": "授权状态",
                    "type": "field",
                    "field": "AUPA_READ_TEXT",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "width": "100px",
                    "style": {},
                    "custom": {
                        "type": "tag",
                        "field": "AUPA_READ_TEXT",
                        "dataMapping": [
                            {
                                "color": "#87d068",
                                "field": "AUPA_READ_TEXT",
                                "value": "可见"
                            },
                            {
                                "color": "#a2d068",
                                "field": "AUPA_READ_TEXT",
                                "value": "不可见"
                            },
                            {
                                "color": "#2db7f5",
                                "field": "AUPA_READ_TEXT",
                                "value": "未设置"
                            }
                        ]
                    }
                },
                {
                    "title": "操作",
                    "type": "action",
                    "width": "80px",
                    "actionIds": [
                        "data_table_add_child",
                        "data_table_delete",
                        "data_table_enabled",
                        "data_table_disabled"
                    ]
                }
            ],
            "rowActions": [
                {
                    "id": "data_table_add_child",
                    "state": "text",
                    "text": "操作授权",
                    "icon": "plus",
                    "color": "text-primary",
                    "type": "link",
                    "size": "small",
                    "execute": [
                        {
                            "triggerType": "ACTION",
                            "trigger": "WINDOW",
                            "windowId": "window_set_oper_auth",
                            "changeValueId": "edit_form_changeValue3",
                            "conditionId":"setup_operate_condition"
                        }
                    ]
                },
                {
                    "id": "data_table_enabled",
                    "state": "text",
                    "text": "可见",
                    "icon": "eye",
                    "color": "text-primary",
                    "type": "link",
                    "size": "small",
                    "execute": [
                        {
                            "triggerType": "OPERATION",
                            "trigger": "EXECUTE_CURRENT_ROW",
                            "ajaxId": "menu_page_enabled_ajax",
                            "conditionId":"setup_homepage_condition"
                        }
                    ]
                },
                {
                    "id": "data_table_disabled",
                    "state": "text",
                    "text": "不可见",
                    "icon": "eye-invisible",
                    "color": "text-primary",
                    "type": "link",
                    "size": "small",
                    "execute": [
                        {
                            "triggerType": "OPERATION",
                            "trigger": "EXECUTE_CURRENT_ROW",
                            "ajaxId": "menu_page_disabled_ajax",
                            "conditionId":"setup_homepage_condition"
                        }
                    ]
                }
            ],
            "dialog": [],
            "window":[
                {
                    "id": "window_set_oper_auth",
                    "layoutName": "PAGE_SYSTEM_PUBLIC_PAGE_AUTH_OPERATE",
                    "type": "confirm",
                    "width": "80%",
                    "title": "操作授权",
                    "footerButton": [
                        {
                            "name": "cancel",
                            "text": "取消",
                            "customActionId": "001"
                        }
                    ],
                    "customAction": [
                        {
                            "id": "001",
                            "execute": [
                                {
                                    "type": "action",
                                    "content": {
                                        "actionType": "close"
                                    }
                                }
                            ]
                        }
                    ]
                }
            ],
            "cascade": {
                "messageSender": [
                    {
                        "id": "grid_sender_02",
                        "senderId": "tree_menu",
                        "triggerType": "BEHAVIOR",
                        "trigger": "CLICK_NODE",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "REFRESH_AS_CHILD",
                                "params": [
                                    {
                                        "name": "PID",
                                        "type": "item",
                                        "valueName": "ID"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "afterAuthPageSuccess",
                        "senderId": "tree_table_page",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "message",
                                        "type": "returnValue",
                                        "valueName": "MESSAGE"
                                    },
                                    {
                                        "name": "type",
                                        "type": "returnValue",
                                        "valueName": "MESSAGE_TYPE"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "REFRESH",
                                "params": [
                                    
                                ]
                            }
                        ]
                    }
                ],
                "messageReceiver": [
                    {
                        "id": "01",
                        "senderId": "tree_menu",
                        "receiveData": [
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "REFRESH_AS_CHILD",
                                "params": [
                                    {
                                        "pname": "MENU_ID",
                                        "cname": "MENU_ID",
                                        "valueTo": "tempValue"
                                    },
                                    {
                                        "pname": "MENU_CODE",
                                        "cname": "MENU_CODE",
                                        "valueTo": "tempValue"
                                    },
                                    {
                                        "pname": "AUFU_ID",
                                        "cname": "AUFU_ID",
                                        "valueTo": "tempValue"
                                    },
                                    {
                                        "pname": "AUFU_READ",
                                        "cname": "AUFU_READ",
                                        "valueTo": "tempValue"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "02",
                        "senderId": "tree_table_page",
                        "receiveData": [
                            {
                                "beforeReceive": [],
                                "triggerType": "ACTION",
                                "trigger": "MESSAGE"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "REFRESH"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "LOAD_REFRESH_DATA"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "LOAD_REFRESH_CHILDREN_DATA"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "ACTION",
                                "trigger": "DELETE_CURRENT_ROW"
                            }
                        ]
                    }
                ]
            },
            "condition": [
                {
                    "id": "setup_homepage_condition",          
                    "state": [                               
                      {
                        "type": "component",           
                        "valueName": "TEMP_VALUE",
                        "expression": [    
                          {
                            "type": "property",         
                            "name": "AUFU_READ",
                            "match": "eq",
                            "matchValue": 1         
                          }
                        ]
                      }
                    ],
                    "result": [
                    {
                        "name": "no",   
                        "triggerType": "BEHAVIOR",
                        "trigger": "MESSAGE",
                        "type":"info", 
                        "message": "请先对菜单授权！"
                    }
                  ] 
                },
                {
                    "id": "setup_operate_condition",          
                    "state": [                               
                      {
                        "type": "component",           
                        "valueName": "ROW_CURRENT",  
                        "expression": [    
                          {
                            "type": "property",         
                            "name": "AUFU_ID",   
                            "match": "notNull"         
                          }
                        ]
                      }
                    ],
                    "result": [
                    {
                        "name": "no",   
                        "triggerType": "BEHAVIOR",
                        "trigger": "MESSAGE",
                        "type":"info", 
                        "message": "请先对页面授权！"
                    }
                  ] 
                }
            ],
            "ajaxConfig": [
                {
                    "id": "menu_page_enabled_ajax",
                    "url": "resource/SET_SYS_AUTH_PAGE_PROC/operate",
                    "urlType": "inner",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "SYS_AUTH_PAGE_ID",
                            "type": "item",
                            "valueName": "SYS_AUTH_PAGE_ID",
                            "value": null
                        },
                        {
                            "name": "MENU_ID",
                            "type": "tempValue",
                            "valueName": "MENU_ID"
                        },
                        {
                            "name": "AUPE_ID",
                            "type": "item",
                            "valueName": "AUPE_ID"
                        },
                        {
                            "name": "AUPE_AUTH_TYPE",
                            "type": "value",
                            "value": "menu"
                        },
                        {
                            "name": "AUTH_TYPE",
                            "type": "value",
                            "value": 1
                        },
                        {
                            "name": "LAYOUT_ID",
                            "type": "item",
                            "valueName": "ID"
                        },
                        {
                            "name": "AUPE_PERMISSION_TYPE",
                            "type": "tempValue",
                            "valueName": "AUTH_PERMISSION_TYPE"
                        },
                        {
                            "name": "AUPE_PERMISSION_CONTENT",
                            "type": "tempValue",
                            "valueName": "ROLE_CODE"
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        }
                    ],
                    "outputParameters": [],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "message.ajax.state.success",
                            "senderId": "afterAuthPageSuccess"
                        }
                    ]
                },
                {
                    "id": "menu_page_disabled_ajax",
                    "url": "resource/SET_SYS_AUTH_PAGE_PROC/operate",
                    "urlType": "inner",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "SYS_AUTH_PAGE_ID",
                            "type": "item",
                            "valueName": "SYS_AUTH_PAGE_ID",
                            "value": null
                        },
                        {
                            "name": "MENU_ID",
                            "type": "tempValue",
                            "valueName": "MENU_ID"
                        },
                        {
                            "name": "AUPE_ID",
                            "type": "item",
                            "valueName": "AUPE_ID"
                        },
                        {
                            "name": "AUPE_AUTH_TYPE",
                            "type": "value",
                            "value": "menu"
                        },
                        {
                            "name": "AUTH_TYPE",
                            "type": "value",
                            "value": 2
                        },
                        {
                            "name": "LAYOUT_ID",
                            "type": "item",
                            "valueName": "ID"
                        },
                        {
                            "name": "AUPE_PERMISSION_TYPE",
                            "type": "tempValue",
                            "valueName": "AUTH_PERMISSION_TYPE"
                        },
                        {
                            "name": "AUPE_PERMISSION_CONTENT",
                            "type": "tempValue",
                            "valueName": "ROLE_CODE"
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        }
                    ],
                    "outputParameters": [],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "message.ajax.state.success",
                            "senderId": "afterAuthPageSuccess"
                        }
                    ]
                }
            ]
        }
    ]
}'
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'LAYOUT_SYSTEM_PUBLIC_PAGE_AUTH_MENU'
	SET @PAGE_CODE = 'PAGE_SYSTEM_PUBLIC_PAGE_AUTH_MENU'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = '菜单授权'
    SET @SORT = 11
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END

BEGIN
    SET @PAGE_JSON = '{
    "layoutJson": {
        "id": "Organazation_Tree_Layout",
        "type": "layout",
        "title": "布局",
        "container": "rows",
        "rows": [
            {
                "cols": [
                    {
                        "id": "col_tree_organazation",
                        "col": "cc",
                        "type": "col",
                        "titlestate": 1,
                        "title": "",
                        "span": 4,
                        "container": "component",
                        "header": {
                            "title": "组织机构",
                            "icon": "",
                            "id": "btn_data_auth"
                        },
                        "size": {
                            "nzXs": 24,
                            "nzSm": 24,
                            "nzMd": 24,
                            "nzLg": 24,
                            "ngXl": 24,
                            "nzXXl": 24
                        },
                        "bodyStyle": {
                            "min-height": "550px",
                            "max-height": "550px",
                            "overflow-y": "auto"
                        },
                        "component": {
                            "id": "tree_org",
                            "type": "cnTree",
                            "title": "",
                            "container": "cnTree"
                        }
                    }
                ],
                "id": "Organazation_rows",
                "type": "row",
                "title": "行",
                "container": "cols"
            }
        ]
    },
    "componentsJson": [
        {
            "id": "btn_data_auth",
            "component": "cnToolbar",
            "size": "small",
            "changeValue": [
                {
                    "id": "edit_org_form_changeValue",
                    "params": [
                        {
                            "name": "AFFERENT_ID",
                            "type": "item",
                            "valueName": "ID",
                            "valueTo": "tempValue"
                        }
                    ]
                }
            ],
            "dialog": [],
            "condition": [],
            "beforeTrigger": [],
            "afterTrigger": [],
            "toolbar": [
                {
                    "id":"a001",
                    "targetViewId": "tree_org",
                    "text": "授权设置",
                    "dropdown": [
                        {
                            "id": "M_refresh",
                            "text": "刷新",
                            "icon": "reload",
                            "color": "text-primary",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "BEHAVIOR",
                                    "trigger": "REFRESH"
                                }
                            ]
                        },
                        {
                            "id": "set_role_org_readable",
                            "text": "设置可读权限",
                            "icon": "eye",
                            "color": "text-red-light",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_NODES_BY_ID",
                                    "ajaxId": "set_role_org_readable"
                                }
                            ]
                        },
                        {
                            "id": "btn_hidden_read",
                            "text": "设置不可读权限",
                            "icon": "eye-invisible",
                            "color": "text-red-light",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_NODES_BY_ID",
                                    "ajaxId": "set_role_org_not_readable"
                                }
                            ]
                        },
                        {
                            "id": "btn_cancel_read",
                            "text": "取消读授权",
                            "icon": "delete",
                            "color": "text-red-light",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_NODES_BY_ID",
                                    "ajaxId": "set_role_org_none_readable"
                                }
                            ]
                        },
                        {
                            "id": "set_role_org_writable",
                            "text": "设置可写权限",
                            "icon": "edit",
                            "color": "text-red-light",
                            "hidden": true,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_NODES_BY_ID",
                                    "ajaxId": "set_role_org_writable"
                                }
                            ]
                        },
                        {
                            "id": "btn_hidden_writable",
                            "text": "设置不可写权限",
                            "icon": "edit",
                            "color": "text-red-light",
                            "hidden": true,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_NODES_BY_ID",
                                    "ajaxId": "set_role_org_not_writable"
                                }
                            ]
                        },
                        {
                            "id": "btn_cancel_writable",
                            "text": "取消写授权",
                            "icon": "delete",
                            "color": "text-red-light",
                            "hidden": true,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_NODES_BY_ID",
                                    "ajaxId": "set_role_org_none_writable"
                                }
                            ]
                        }
                    ]
                }
            ],
            "ajaxConfig": [
                {
                    "id": "set_role_org_readable",
                    "url": "resource/ADD_DATA_AUTH/operate",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "RELATION_IDS",
                            "type": "item",
                            "valueName": "ids"
                        },
                        {
                            "name": "R_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "W_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_IDEN",
                            "type": "value",
                            "value": "R1"
                        },
                        {
                            "name": "AFFERENT_ID",
                            "type": "tempValue",
                            "valueName": "ROLE_CODE"
                        }
                    ],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "设置成功",
                            "senderId": "afterSetAuthMenuFlagSuccess"
                        }
                    ]
                },
                {
                    "id": "set_role_org_not_readable",
                    "url": "resource/ADD_DATA_AUTH/operate",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "RELATION_IDS",
                            "type": "item",
                            "valueName": "ids"
                        },
                        {
                            "name": "R_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "W_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_IDEN",
                            "type": "value",
                            "value": "R2"
                        },
                        {
                            "name": "AFFERENT_ID",
                            "type": "tempValue",
                            "valueName": "ROLE_CODE"
                        }
                    ],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "设置成功",
                            "senderId": "afterSetAuthMenuFlagSuccess"
                        }
                    ]
                },
                {
                    "id": "set_role_org_none_readable",
                    "url": "resource/ADD_DATA_AUTH/operate",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "RELATION_IDS",
                            "type": "item",
                            "valueName": "ids"
                        },
                        {
                            "name": "R_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "W_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_IDEN",
                            "type": "value",
                            "value": "R0"
                        },
                        {
                            "name": "AFFERENT_ID",
                            "type": "tempValue",
                            "valueName": "ROLE_CODE"
                        }
                    ],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "设置成功",
                            "senderId": "afterSetAuthMenuFlagSuccess"
                        }
                    ]
                },
                {
                    "id": "set_role_org_writable",
                    "url": "resource/ADD_DATA_AUTH/operate",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "RELATION_IDS",
                            "type": "item",
                            "valueName": "ids"
                        },
                        {
                            "name": "R_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "W_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_IDEN",
                            "type": "value",
                            "value": "W1"
                        },
                        {
                            "name": "AFFERENT_ID",
                            "type": "tempValue",
                            "valueName": "ROLE_CODE"
                        }
                    ],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "设置成功",
                            "senderId": "afterSetAuthMenuFlagSuccess"
                        }
                    ]
                },
                {
                    "id": "set_role_org_not_writable",
                    "url": "resource/ADD_DATA_AUTH/operate",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "RELATION_IDS",
                            "type": "item",
                            "valueName": "ids"
                        },
                        {
                            "name": "R_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "W_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_IDEN",
                            "type": "value",
                            "value": "W2"
                        },
                        {
                            "name": "AFFERENT_ID",
                            "type": "tempValue",
                            "valueName": "ROLE_CODE"
                        }
                    ],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "设置成功",
                            "senderId": "afterSetAuthMenuFlagSuccess"
                        }
                    ]
                },
                {
                    "id": "set_role_org_none_writable",
                    "url": "resource/ADD_DATA_AUTH/operate",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "RELATION_IDS",
                            "type": "item",
                            "valueName": "ids"
                        },
                        {
                            "name": "R_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "W_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_ALLOW",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_IDEN",
                            "type": "value",
                            "value": "W0"
                        },
                        {
                            "name": "AFFERENT_ID",
                            "type": "tempValue",
                            "valueName": "ROLE_CODE"
                        }
                    ],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "设置成功",
                            "senderId": "afterSetAuthMenuFlagSuccess"
                        }
                    ]
                }
            ],
            "cascade": {
                "messageSender": [],
                "messageReceiver": []
            }
        },
        {
            "id": "tree_org",
            "title": "树",
            "titleIcon": "right-circle",
            "component": "cnTree",
            "keyId": "ID",
            "async": false,
            "showCheckBox": true,
            "expandAll": false,
            "loadingOnInit": true,
            "showLine": false,
            "rootTitle": "根节点",
		    "checkStrictlyShow":true,
            "checkStrictly":true,
            "enableState": true,
            "loadingConfig": {
                "url": "resource/GET_PREMISSION_ORG_TREE/query",
                "method": "get",
                "params": [
                    {
                        "name": "_recursive",
                        "type": "value",
                        "value": true
                    },
                    {
                        "name": "_deep",
                        "type": "value",
                        "value": "-1"
                    },
                    {
                        "name": "_pcName",
                        "type": "value",
                        "value": "PARENT_ID"
                    },
                    {
                        "name": "AFFERENT_ID",
                        "type": "tempValue",
                        "valueName": "ROLE_CODE"
                    }
                ],
                "filter": []
            },
            "expandConfig": {
                "url": "resource/GET_SYS_MENU_TREE/query",
                "method": "get",
                "params": [
                    {
                        "name": "_root.PID",
                        "type": "item",
                        "valueName": "key",
                        "value": ""
                    },
                    {
                        "name": "_recursive",
                        "type": "value",
                        "value": true
                    },
                    {
                        "name": "_deep",
                        "type": "value",
                        "value": "2"
                    },
                    {
                        "name": "_pcName",
                        "type": "value",
                        "value": "PID"
                    },
                    {
                        "name": "ROLE_CODE",
                        "type": "tempValue",
                        "valueName": "ROLE_CODE"
                    }
                ]
            },
            "columns": [
                {
                    "title": "ID",
                    "type": "key",
                    "field": "ID"
                },
                {
                    "title": "PID",
                    "type": "parentId",
                    "field": "PID"
                },
                {
                    "title": "NAME",
                    "type": "title",
                    "field": "NAME"
                }
            ],
            "cascade": {
                "messageSender": [
                    {
                        "id": "afterSetAuthMenuFlagSuccess",
                        "senderId": "tree_org",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "tree_org",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "message",
                                        "type": "returnValue",
                                        "valueName": "MESSAGE"
                                    },
                                    {
                                        "name": "type",
                                        "type": "returnValue",
                                        "valueName": "MESSAGE_TYPE"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "tree_org",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "CHANGE_CHECKED_NODE_DATA",
                                "params": [
                                    {
                                        "name": "R_ALLOW",
                                        "type": "returnValue",
                                        "valueName": "R_ALLOW"
                                    },
                                    {
                                        "name": "W_ALLOW",
                                        "type": "returnValue",
                                        "valueName": "W_ALLOW"
                                    },
                                    {
                                        "name": "AUTH_ALLOW",
                                        "type": "returnValue",
                                        "valueName": "AUTH_ALLOW"
                                    }
                                ]
                            }
                        ]
                    }
                ],
                "messageReceiver": [
                    {
                        "id": "s_201",
                        "senderId": "tree_org",
                        "receiveData": [
                            {
                                "triggerType": "ACTION",
                                "trigger": "APPEND_CHILD_TO_SELECTED_NODE"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "ACTION",
                                "trigger": "MESSAGE",
                                "params":[

                                ]
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "REFRESH"
                            },
                            {
                                "triggerType": "ACTION",
                                "trigger": "CHANGE_CHECKED_NODE_DATA"
                            }
                        ]
                    }
                ]
            },
            "iconState":[
                {
                    "id": "001",
                    "field": "R_ALLOW", 
                    "position": "left",
                    "iconConfig": {
                        "pre": {
                            "type": "default",
                            "caseValue": {
                                "type": "",  
                                "valueName": "",
                                "regular": "",
                                "value": ""
                            }
                        },
                        "enableLabel": false, 
                        "enableTooltip": true, 
                        "enableIcon": true,
                        "enableDefaultValue": true, 
                        "enableSwitch": false, 
                        "showTheme": "icon", 
                        "enableColor": "", 
                        "enableSelected": false, 
                        "enable": true, 
                        "defaultValue": "003",
                        "initObject": { 
                            "label": "", "color": "green", "value": 1, "icon": "eye"
                        },
                        "options": [  
                            { "label": "", "color": "green", "value": 1, "icon": "eye", "tooltipTitle": "【数据可见】" },
                            { "label": "", "color": "red", "value": 2, "icon": "eye-invisible", "tooltipTitle": "【数据不可见】" },
                            { "label": "", "color": "blue", "value": 0, "icon": "file-unknown", "tooltipTitle": "【数据读取未设置】" }
                        ]
                    }
                },
                {
                    "id": "002",
                    "field": "W_ALLOW", 
                    "position": "left",
                    "iconConfig": {
                        "pre": {
                            "type": "default",
                            "caseValue": {
                                "type": "",  
                                "valueName": "",
                                "regular": "",
                                "value": ""
                            }
                        },
                        "enableLabel": false, 
                        "enableTooltip": true, 
                        "enableIcon": true,
                        "enableDefaultValue": true, 
                        "enableSwitch": false, 
                        "showTheme": "icon", 
                        "enableColor": "", 
                        "enableSelected": false, 
                        "enable": true, 
                        "defaultValue": "003",
                        "initObject": { 
                            "label": "", "color": "magenta", "value": 1, "icon": "eye"
                        },
                        "options": [  
                            { "label": "", "color": "magenta", "value": 1, "icon": "edit", "tooltipTitle": "【数据可编辑】" },
                            { "label": "", "color": "lime", "value": 2, "icon": "book", "tooltipTitle": "【数据不可编辑】" },
                            { "label": "", "color": "red", "value": 0, "icon": "file-unknown", "tooltipTitle": "【数据编辑未设置】" }
                        ]
                    }
                }
            ],
            "rowActions": [],
            "dialog": [],
            "condition": [],
            "ajaxConfig": [],
            "beforeTrigger": [],
            "afterTrigger": []
        }
    ]
}'
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'LAYOUT_SYSTEM_PUBLIC_PAGE_AUTH_DATA'
	SET @PAGE_CODE = 'PAGE_SYSTEM_PUBLIC_PAGE_AUTH_DATA'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = '数据授权'
    SET @SORT = 12
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END

BEGIN
    SET @PAGE_JSON = '{
    "layoutJson": {
        "id": "Module_layout",
        "type": "layout",
        "title": "布局",
        "container": "rows",
        "rows": [
            {
                "cols": [
                    {
                        "id": "col_tree_menu",
                        "col": "cc",
                        "type": "col",
                        "titlestate": 1,
                        "title": "",
                        "span": 8,
                        "container": "component",
                        "header": {
                            "title": "菜单",
                            "icon": "",
                            "id": ""
                        },
                        "size": {
                            "nzXs": 8,
                            "nzSm": 8,
                            "nzMd": 8,
                            "nzLg": 8,
                            "ngXl": 8,
                            "nzXXl": 8
                        },
                        "bodyStyle": {
                            "min-height": "650px",
                            "max-height": "650px",
                            "overflow": "auto"
                        },
                        "component": {
                            "id": "tree_menu",
                            "type": "cnTree",
                            "title": "",
                            "container": "cnTree"
                        }
                    },
                    {
                        "id": "col_tree_page",
                        "col": "cc",
                        "type": "col",
                        "titlestate": 1,
                        "title": "",
                        "span": 8,
                        "container": "component",
                        "header": {
                            "title": "关联页面",
                            "icon": "",
                            "id": ""
                        },
                        "size": {
                            "nzXs": 8,
                            "nzSm": 8,
                            "nzMd": 8,
                            "nzLg": 8,
                            "ngXl": 8,
                            "nzXXl": 8
                        },
                        "bodyStyle": {
                            "min-height": "650px",
                            "max-height": "650px",
                            "overflow": "auto"
                        },
                        "component": {
                            "id": "tree_page_type",
                            "type": "cnTree",
                            "title": "",
                            "container": "cnTree"
                        }
                    },
                    {
                        "id": "col_tree_operation",
                        "col": "cc",
                        "type": "col",
                        "titlestate": 1,
                        "title": "",
                        "span": 8,
                        "container": "component",
                        "header": {
                            "title": "页面操作",
                            "icon": "",
                            "id": "btn_operation_auth"
                        },
                        "size": {
                            "nzXs": 8,
                            "nzSm": 8,
                            "nzMd": 8,
                            "nzLg": 8,
                            "ngXl": 8,
                            "nzXXl": 8
                        },
                        "bodyStyle": {
                            "min-height": "650px",
                            "max-height": "650px",
                            "overflow": "auto"
                        },
                        "component": {
                            "id": "tree_page_operate",
                            "type": "cnTree",
                            "title": "",
                            "container": "cnTree"
                        }
                    }
                ],
                "id": "Modu_rows",
                "type": "row",
                "title": "行",
                "container": "cols"
            }
        ]
    },
    "componentsJson": [
        {
            "id": "tree_menu",
            "title": "树",
            "titleIcon": "right-circle",
            "component": "cnTree",
            "keyId": "ID",
            "async": true,
            "showCheckBox": false,
            "expandAll": false,
            "loadingOnInit": true,
            "showSearch": true,
            "showLine": false,
            "rootTitle": "根节点",
            "enableState": true,
            "defaultSelectedConfig": {
                "location": {
                    "locationContent": {
                        "hierarchy": 0,
                        "index": 0,
                        "isLeaf": true
                    }
                },
                "default": {
                    "locationContent": {
                        "hierarchy": 0,
                        "index": 0,
                        "isLeaf": true
                    }
                }
            },
            "loadingConfig": {
                "url": "resource/GET_MENU_AUTH_TREE_SHOW/query",
                "method": "get",
                "params": [
                    {
                        "name": "_recursive",
                        "type": "value",
                        "value": true
                    },
                    {
                        "name": "_deep",
                        "type": "value",
                        "value": "2"
                    },
                    {
                        "name": "_pcName",
                        "type": "value",
                        "value": "PID"
                    },
                    {
                        "name": "ROLE_CODE",
                        "type": "tempValue",
                        "valueName": "ROLE_CODE"
                    }
                ],
                "filter": []
            },
            "expandConfig": {
                "url": "resource/GET_MENU_AUTH_TREE_SHOW/query",
                "method": "get",
                "params": [
                    {
                        "name": "_root.PID",
                        "type": "item",
                        "valueName": "key",
                        "value": ""
                    },
                    {
                        "name": "_recursive",
                        "type": "value",
                        "value": true
                    },
                    {
                        "name": "_deep",
                        "type": "value",
                        "value": "2"
                    },
                    {
                        "name": "_pcName",
                        "type": "value",
                        "value": "PID"
                    },
                    {
                        "name": "ROLE_CODE",
                        "type": "tempValue",
                        "valueName": "ROLE_CODE"
                    }
                ]
            },
            "columns": [
                {
                    "title": "ID",
                    "type": "key",
                    "field": "ID"
                },
                {
                    "title": "PID",
                    "type": "parentId",
                    "field": "PID"
                },
                {
                    "title": "NAME",
                    "type": "title",
                    "field": "NAME"
                }
            ],
            "cascade": {
                "messageSender": [
                    {
                        "id": "grid_sender_02",
                        "senderId": "tree_menu",
                        "triggerType": "BEHAVIOR",
                        "trigger": "CLICK_NODE",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "REFRESH_AS_CHILD",
                                "params": [
                                    {
                                        "name": "MENU_CODE",
                                        "type": "item",
                                        "valueName": "CODE"
                                    },
                                    {
                                        "name": "TYPE",
                                        "type": "item",
                                        "valueName": "TYPE"
                                    },
                                    {
                                        "name": "AUFU_ID",
                                        "type": "item",
                                        "valueName": "AUFU_ID"
                                    },
                                    {
                                        "name": "AUFU_READ",
                                        "type": "item",
                                        "valueName": "AUFU_READ"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "aftetMenuSaveSuccessfully",
                        "senderId": "tree_menu",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "type",
                                        "type": "value",
                                        "value": "success"
                                    },
                                    {
                                        "name": "code",
                                        "type": "value",
                                        "value": "新增成功"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "APPEND_CHILD_TO_SELECTED_NODE",
                                "params": [
                                    {
                                        "name": "ID",
                                        "type": "addedRows",
                                        "valueName": "ID"
                                    },
                                    {
                                        "name": "NAME",
                                        "type": "addedRows",
                                        "valueName": "NAME"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "afterMenuEditSuccessfully",
                        "senderId": "tree_menu",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "type",
                                        "type": "value",
                                        "value": "success"
                                    },
                                    {
                                        "name": "code",
                                        "type": "value",
                                        "value": "编辑成功"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "UPDATE_SELECTED_NODE",
                                "params": [
                                    {
                                        "name": "ID",
                                        "type": "addedRows",
                                        "valueName": "ID"
                                    },
                                    {
                                        "name": "NAME",
                                        "type": "addedRows",
                                        "valueName": "NAME"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "afterMenuDeleteSuccessfully",
                        "senderId": "tree_menu",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "MESSAGE",
                                        "type": "returnValue",
                                        "value": "MESSAGE"
                                    },
                                    {
                                        "name": "MESSAGE_TYPE",
                                        "type": "returnValue",
                                        "value": "MESSAGE_TYPE"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "DELETE_SELECTED_NODE",
                                "params": [
                                    {
                                        "name": "ID",
                                        "type": "item",
                                        "valueName": "ID"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "REFRESH_AS_CHILD",
                                "params": [
                                    {
                                        "name": "PID",
                                        "type": "value",
                                        "valueName": "ID",
                                        "value": "-999"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "afterSetAuthMenuFlagSuccess",
                        "senderId": "tree_menu",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "tree_menu",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "message",
                                        "type": "returnValue",
                                        "valueName": "MESSAGE"
                                    },
                                    {
                                        "name": "type",
                                        "type": "returnValue",
                                        "valueName": "MESSAGE_TYPE"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "tree_menu",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "CHANGE_CHECKED_NODE_DATA",
                                "params": [
                                    {
                                        "name": "AUFU_READ",
                                        "type": "returnValue",
                                        "valueName": "MESSAGE_AUTH_FLAG"
                                    }
                                ]
                            }
                        ]
                    }
                ],
                "messageReceiver": [
                    {
                        "id": "s_201",
                        "senderId": "tree_menu",
                        "receiveData": [
                            {
                                "triggerType": "ACTION",
                                "trigger": "APPEND_CHILD_TO_SELECTED_NODE"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "ACTION",
                                "trigger": "MESSAGE",
                                "params": []
                            },
                            {
                                "triggerType": "ACTION",
                                "trigger": "UPDATE_SELECTED_NODE"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "REFRESH"
                            },
                            {
                                "triggerType": "BEHAVIOR",
                                "trigger": "DELETE_SELECTED_NODE"
                            },
                            {
                                "triggerType": "ACTION",
                                "trigger": "CHANGE_CHECKED_NODE_DATA"
                            }
                        ]
                    }
                ]
            },
            "iconState": [
                {
                    "id": "001",
                    "field": "AUFU_AUTH",
                    "position": "left",
                    "iconConfig": {
                        "pre": {
                            "type": "default",
                            "caseValue": {
                                "type": "",
                                "valueName": "",
                                "regular": "",
                                "value": ""
                            }
                        },
                        "enableLabel": false,
                        "enableTooltip": true,
                        "enableIcon": true,
                        "enableDefaultValue": true,
                        "enableSwitch": false,
                        "showTheme": "icon",
                        "enableColor": "",
                        "enableSelected": false,
                        "enable": true,
                        "defaultValue": "003",
                        "initObject": {
                            "label": "",
                            "color": "green",
                            "value": 1,
                            "icon": "eye"
                        },
                        "options": [
                            {
                                "label": "",
                                "color": "green",
                                "value": 1,
                                "icon": "safety-certificate",
                                "tooltipTitle": "【允许授权】"
                            },
                            {
                                "label": "",
                                "color": "red",
                                "value": 2,
                                "icon": "stop",
                                "tooltipTitle": "【禁止授权】"
                            },
                            {
                                "label": "",
                                "color": "blue",
                                "value": 0,
                                "icon": "question-circle",
                                "tooltipTitle": "【未设置授权】"
                            }
                        ]
                    }
                },
                {
                    "id": "002",
                    "field": "AUFU_READ",
                    "position": "left",
                    "iconConfig": {
                        "pre": {
                            "type": "default",
                            "caseValue": {
                                "type": "",
                                "valueName": "",
                                "regular": "",
                                "value": ""
                            }
                        },
                        "enableLabel": false,
                        "enableTooltip": true,
                        "enableIcon": true,
                        "enableDefaultValue": true,
                        "enableSwitch": false,
                        "showTheme": "icon",
                        "enableColor": "",
                        "enableSelected": false,
                        "enable": true,
                        "defaultValue": "003",
                        "initObject": {
                            "label": "",
                            "color": "green",
                            "value": 1,
                            "icon": "eye"
                        },
                        "options": [
                            {
                                "label": "",
                                "color": "green",
                                "value": 1,
                                "icon": "eye",
                                "tooltipTitle": "【可见】"
                            },
                            {
                                "label": "",
                                "color": "red",
                                "value": 2,
                                "icon": "eye-invisible",
                                "tooltipTitle": "【不可见】"
                            },
                            {
                                "label": "",
                                "color": "lightblue",
                                "value": 0,
                                "icon": "file-unknown",
                                "tooltipTitle": "【未设置】"
                            }
                        ]
                    }
                }
            ],
            "rowActions": [],
            "dialog": [],
            "condition": [],
            "ajaxConfig": [],
            "beforeTrigger": [],
            "afterTrigger": []
        },
        {
            "id": "tree_page_type",
            "title": "树",
            "titleIcon": "right-circle",
            "component": "cnTree",
            "keyId": "ID",
            "async": false,
            "showCheckBox": false,
            "expandAll": true,
            "loadingOnInit": false,
            "showLine": false,
            "showSearch": true,
            "enableState": true,
            "rootTitle": "根节点",
            "scroll": {
                "y": "400px"
            },
            "defaultSelectedConfig": {
                "location": {
                    "locationContent": {
                        "hierarchy": 0,
                        "index": 0,
                        "isLeaf": true
                    }
                },
                "default": {
                    "locationContent": {
                        "hierarchy": 0,
                        "index": 0,
                        "isLeaf": true
                    }
                }
            },
            "loadingConfig": {
                "url": "resource/GET_AUTH_PAGE_LIST_SHOW/query",
                "method": "get",
                "params": [
                    {
                        "name": "_recursive",
                        "type": "value",
                        "value": true
                    },
                    {
                        "name": "_deep",
                        "type": "value",
                        "value": "-1"
                    },
                    {
                        "name": "_pcName",
                        "type": "value",
                        "value": "PARENT_ID"
                    },
                    {
                        "name": "_root.PARENT_ID",
                        "type": "value",
                        "dataType": "nullable",
                        "value": null
                    },
                    {
                        "name": "_root.ID",
                        "type": "tempValue",
                        "valueName": "PAGE_ID"
                    },
                    {
                        "name": "MENU_CODE",
                        "type": "tempValue",
                        "valueName": "MENU_CODE"
                    },
                    {
                        "name": "ROLE_CODE",
                        "type": "tempValue",
                        "valueName": "ROLE_CODE"
                    }
                ],
                "filter": []
            },
            "columns": [
                {
                    "title": "ID",
                    "type": "key",
                    "field": "ID"
                },
                {
                    "title": "PARENT_ID",
                    "type": "parentId",
                    "field": "PARENT_ID"
                },
                {
                    "title": "NAME",
                    "type": "title",
                    "field": "NAME"
                }
            ],
            "cascade": {
                "messageSender": [
                    {
                        "id": "grid_sender_02",
                        "senderId": "tree_page_type",
                        "triggerType": "BEHAVIOR",
                        "trigger": "CLICK_NODE",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "tree_page_operate",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "REFRESH_AS_CHILD",
                                "params": [
                                    {
                                        "name": "MENU_REF_PAGE_ID",
                                        "type": "item",
                                        "valueName": "ID"
                                    },
                                    {
                                        "name": "PAGE_CODE",
                                        "type": "item",
                                        "valueName": "PAGE_CODE"
                                    },
                                    {
                                        "name": "LAYOUT_VERSION",
                                        "type": "item",
                                        "valueName": "VERSION"
                                    },
                                    {
                                        "name": "REF_PAGE_ID",
                                        "type": "item",
                                        "valueName": "PAGE_ID"
                                    },
                                    {
                                        "name": "ROLE_CODE",
                                        "type": "tempValue",
                                        "valueName": "ROLE_CODE"
                                    },
                                    {
                                        "name": "PAGE_ID",
                                        "type": "item",
                                        "valueName": "PAGE_ID"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "grid_sender_02",
                        "senderId": "tree_page_type",
                        "triggerType": "BEHAVIOR",
                        "trigger": "EMPTY_LOAD",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "tree_page_operate",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "REFRESH_AS_CHILD",
                                "params": []
                            }
                        ]
                    }
                ],
                "messageReceiver": [
                    {
                        "id": "01",
                        "senderId": "tree_menu",
                        "receiveData": [
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "REFRESH_AS_CHILD",
                                "params": [
                                    {
                                        "pname": "MENU_CODE",
                                        "cname": "MENU_CODE",
                                        "valueTo": "tempValue"
                                    },
                                    {
                                        "pname": "AUFU_ID",
                                        "cname": "AUFU_ID",
                                        "valueTo": "tempValue"
                                    },
                                    {
                                        "pname": "AUFU_READ",
                                        "cname": "AUFU_READ",
                                        "valueTo": "tempValue"
                                    }
                                ]
                            }
                        ]
                    }
                ]
            },
            "iconState": [
                {
                    "id": "001",
                    "field": "AUPA_READ",
                    "position": "left",
                    "iconConfig": {
                        "pre": {
                            "type": "default",
                            "caseValue": {
                                "type": "",
                                "valueName": "",
                                "regular": "",
                                "value": ""
                            }
                        },
                        "enableLabel": false,
                        "enableTooltip": true,
                        "enableIcon": true,
                        "enableDefaultValue": true,
                        "enableSwitch": false,
                        "showTheme": "icon",
                        "enableColor": "",
                        "enableSelected": false,
                        "enable": true,
                        "defaultValue": "003",
                        "initObject": {
                            "label": "",
                            "color": "green",
                            "value": 1,
                            "icon": "eye"
                        },
                        "options": [
                            {
                                "label": "",
                                "color": "green",
                                "value": 1,
                                "icon": "eye",
                                "tooltipTitle": "【可见】"
                            },
                            {
                                "label": "",
                                "color": "red",
                                "value": 2,
                                "icon": "eye-invisible",
                                "tooltipTitle": "【不可见】"
                            },
                            {
                                "label": "",
                                "color": "lightblue",
                                "value": 0,
                                "icon": "question-circle",
                                "tooltipTitle": "【未设置】"
                            }
                        ]
                    }
                },
                {
                    "id": "002",
                    "field": "AUPA_AUTH",
                    "position": "left",
                    "iconConfig": {
                        "pre": {
                            "type": "default",
                            "caseValue": {
                                "type": "",
                                "valueName": "",
                                "regular": "",
                                "value": ""
                            }
                        },
                        "enableLabel": false,
                        "enableTooltip": true,
                        "enableIcon": true,
                        "enableDefaultValue": true,
                        "enableSwitch": false,
                        "showTheme": "icon",
                        "enableColor": "",
                        "enableSelected": false,
                        "enable": true,
                        "defaultValue": "003",
                        "initObject": {
                            "label": "",
                            "color": "green",
                            "value": 1,
                            "icon": "safety-certificate"
                        },
                        "options": [
                            {
                                "label": "",
                                "color": "green",
                                "value": 1,
                                "icon": "safety-certificate",
                                "tooltipTitle": "【允许授权】"
                            },
                            {
                                "label": "",
                                "color": "red",
                                "value": 2,
                                "icon": "stop",
                                "tooltipTitle": "【禁止授权】"
                            },
                            {
                                "label": "",
                                "color": "lightblue",
                                "value": 0,
                                "icon": "question-circle",
                                "tooltipTitle": "【未设置授权】"
                            }
                        ]
                    }
                }
            ],
            "rowActions": [],
            "dialog": [],
            "condition": [],
            "ajaxConfig": [],
            "beforeTrigger": [],
            "afterTrigger": []
        },
        {
            "id": "tree_page_operate",
            "title": "树",
            "titleIcon": "right-circle",
            "component": "cnTree",
            "keyId": "ID",
            "async": false,
            "showCheckBox": false,
            "expandAll": true,
            "loadingOnInit": false,
            "showLine": false,
            "rootTitle": "根节点",
            "checkStrictly": false,
            "enableState": true,
            "showSearch": true,
            "defaultSelectedConfig": {
                "location": {
                    "locationContent": {
                        "hierarchy": 0,
                        "index": 0,
                        "isLeaf": true
                    }
                },
                "default": {
                    "locationContent": {
                        "hierarchy": 0,
                        "index": 0,
                        "isLeaf": true
                    }
                }
            },
            "loadingConfig": {
                "url": "resource/GET_AUTH_LAYOUT_STRUCTURE_SHOW/query",
                "method": "get",
                "params": [
                    {
                        "name": "_recursive",
                        "type": "value",
                        "value": true
                    },
                    {
                        "name": "_deep",
                        "type": "value",
                        "value": "-1"
                    },
                    {
                        "name": "_pcName",
                        "type": "value",
                        "value": "REF_PARENT_ID"
                    },
                    {
                        "name": "_root.REF_PARENT_ID",
                        "type": "value",
                        "dataType": "nullable",
                        "value": null
                    },
                    {
                        "name": "_root.PAGE_ID",
                        "type": "tempValue",
                        "valueName": "REF_PAGE_ID"
                    },
                    {
                        "name": "PAGE_ID",
                        "type": "tempValue",
                        "valueName": "REF_PAGE_ID"
                    },
                    {
                        "name": "ROLE_CODE",
                        "type": "tempValue",
                        "valueName": "ROLE_CODE"
                    },
                    {
                        "name": "PAGE_CODE",
                        "type": "tempValue",
                        "valueName": "PAGE_CODE"
                    },
                    {
                        "name": "MENU_REF_PAGE_ID",
                        "type": "tempValue",
                        "valueName": "MENU_REF_PAGE_ID"
                    },
                    {
                        "name": "LAYOUT_VERSION",
                        "type": "tempValue",
                        "valueName": "LAYOUT_VERSION"
                    }
                ],
                "filter": []
            },
            "expandConfig": {
                "url": "resource/GET_LAYOUT_STRUCTURE/query",
                "method": "get",
                "params": [
                    {
                        "name": "_root.REF_PARENT_ID",
                        "type": "item",
                        "valueName": "key",
                        "value": ""
                    },
                    {
                        "name": "_recursive",
                        "type": "value",
                        "value": true
                    },
                    {
                        "name": "_deep",
                        "type": "value",
                        "value": "2"
                    },
                    {
                        "name": "_pcName",
                        "type": "value",
                        "value": "REF_PARENT_ID"
                    }
                ]
            },
            "columns": [
                {
                    "title": "ID",
                    "type": "key",
                    "field": "ID"
                },
                {
                    "title": "REF_PARENT_ID",
                    "type": "parentId",
                    "field": "REF_PARENT_ID"
                },
                {
                    "title": "NAME",
                    "type": "title",
                    "field": "REF_TITLE"
                }
            ],
            "cascade": {
                "messageSender": [],
                "messageReceiver": [
                    {
                        "id": "s_201",
                        "senderId": "tree_page_type",
                        "receiveData": [
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "REFRESH_AS_CHILD",
                                "params": [
                                    {
                                        "pname": "REF_PAGE_ID",
                                        "cname": "REF_PAGE_ID",
                                        "valueTo": "tempValue"
                                    },
                                    {
                                        "pname": "ROLE_CODE",
                                        "cname": "ROLE_CODE",
                                        "valueTo": "tempValue"
                                    },
                                    {
                                        "pname": "LAYOUT_VERSION",
                                        "cname": "LAYOUT_VERSION",
                                        "valueTo": "tempValue"
                                    },
                                    {
                                        "pname": "MENU_REF_PAGE_ID",
                                        "cname": "MENU_REF_PAGE_ID",
                                        "valueTo": "tempValue"
                                    },
                                    {
                                        "pname": "PAGE_CODE",
                                        "cname": "PAGE_CODE",
                                        "valueTo": "tempValue"
                                    },
                                    {
                                        "pname": "PAGE_ID",
                                        "cname": "PAGE_ID",
                                        "valueTo": "tempValue"
                                    }
                                ]
                            }
                        ]
                    }
                ]
            },
            "iconState": [
                {
                    "id": "001",
                    "field": "R_ALLOW",
                    "position": "left",
                    "iconConfig": {
                        "pre": {
                            "type": "condition",
                            "caseValue": {
                                "type": "currentValue",
                                "valueName": "COMPONENT_ATTR_TYPE",
                                "regular": "toolbar|rowActions",
                                "value": ""
                            }
                        },
                        "enableLabel": false,
                        "enableTooltip": true,
                        "enableIcon": true,
                        "enableDefaultValue": true,
                        "enableSwitch": false,
                        "showTheme": "icon",
                        "enableColor": "",
                        "enableSelected": false,
                        "enable": true,
                        "defaultValue": 0,
                        "initObject": {
                            "label": "",
                            "color": "green",
                            "value": 1,
                            "icon": "eye"
                        },
                        "options": [
                            {
                                "label": "",
                                "color": "green",
                                "value": 1,
                                "icon": "eye",
                                "tooltipTitle": "【数据可见】"
                            },
                            {
                                "label": "",
                                "color": "red",
                                "value": 2,
                                "icon": "eye-invisible",
                                "tooltipTitle": "【数据不可见】"
                            },
                            {
                                "label": "",
                                "color": "lightblue",
                                "value": 0,
                                "icon": "question-circle",
                                "tooltipTitle": "【数据读取未设置】"
                            }
                        ]
                    }
                },
                {
                    "id": "002",
                    "field": "AUTH_ALLOW",
                    "position": "left",
                    "iconConfig": {
                        "pre": {
                            "type": "default",
                            "caseValue": {
                                "type": "",
                                "valueName": "",
                                "regular": "",
                                "value": ""
                            }
                        },
                        "enableLabel": false,
                        "enableTooltip": true,
                        "enableIcon": true,
                        "enableDefaultValue": true,
                        "enableSwitch": false,
                        "showTheme": "icon",
                        "enableColor": "",
                        "enableSelected": false,
                        "enable": true,
                        "defaultValue": "003",
                        "initObject": {
                            "label": "",
                            "color": "green",
                            "value": 1,
                            "icon": ""
                        },
                        "options": [
                            {
                                "label": "",
                                "color": "green",
                                "value": 1,
                                "icon": "safety-certificate",
                                "tooltipTitle": "【允许授权】"
                            },
                            {
                                "label": "",
                                "color": "red",
                                "value": 2,
                                "icon": "stop",
                                "tooltipTitle": "【禁止授权】"
                            },
                            {
                                "label": "",
                                "color": "lightblue",
                                "value": 0,
                                "icon": "question-circle",
                                "tooltipTitle": "【未设置】"
                            }
                        ]
                    }
                }
            ],
            "rowActions": [],
            "dialog": [],
            "condition": [],
            "ajaxConfig": [],
            "beforeTrigger": [],
            "afterTrigger": []
        }
    ]
}'
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'LAYOUT_SYSTEM_PUBLIC_PAGE_AUTH_READ'
	SET @PAGE_CODE = 'PAGE_SYSTEM_PUBLIC_PAGE_AUTH_READ'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = '查看授权'
    SET @SORT = 13
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END

BEGIN
    SET @PAGE_JSON = '{
    "layoutJson": {
        "id": "Add_User_Role",
        "type": "layout",
        "container": "rows",
        "rows": [
            {
                "id": "Add_User_Role_rows",
                "type": "row",
                "title": "行",
                "container": "cols",
                "cols": [
                    {
                        "id": "Add_Role_User_clos_1",
                        "col": "cc",
                        "type": "col",
                        "titlestate": 1,
                        "title": "",
                        "span": 6,
                        "container": "component",
                        "header": {
                            "title": "组织机构",
                            "icon": "",
                            "id": ""
                        },
                        "size": {
                            "nzXs": 6,
                            "nzSm": 6,
                            "nzMd": 6,
                            "nzLg": 6,
                            "ngXl": 6,
                            "nzXXl": 6
                        },
                        "bodyStyle": {
                            "min-height": "400px"
                        },
                        "component": {
                            "id": "system_department_tree_001",
                            "type": "cnTree",
                            "title": "",
                            "container": "cnTree"
                        }
                    },
                    {
                        "id": "Add_Role_User_clos_2",
                        "col": "cc",
                        "type": "col",
                        "titlestate": 1,
                        "title": "",
                        "span": 18,
                        "container": "component",
                        "header": {
                            "title": "人员信息",
                            "icon": "",
                            "id": "button_add_resource_user_link_Role"
                        },
                        "size": {
                            "nzXs": 18,
                            "nzSm": 18,
                            "nzMd": 18,
                            "nzLg": 18,
                            "ngXl": 18,
                            "nzXXl": 18
                        },
                        "bodyStyle": {
                            "min-height": "400px"
                        },
                        "component": {
                            "id": "table_add_user_from_role",
                            "type": "cnDataTable",
                            "title": "",
                            "container": "cnDataTable"
                        }
                    }
                ]
            }
        ],
        "cascade": {
            "messageSender": [],
            "messageReceiver": []
        }
    },
    "componentsJson": [
        {
            "id": "button_add_resource_user_link_Role",
            "component": "cnToolbar",
            "size": "small",
            "changeValue": [
                {
                    "id": "edit_form_changeValue",
                    "params": [
                        {
                            "name": "ROLE_ID",
                            "type": "item",
                            "valueName": "ID",
                            "valueTo": "tempValue"
                        }
                    ]
                }
            ],
            "dialog": [],
            "toolbar": [
                {
                    "targetViewId": "table_add_user_from_role",
                    "group": [
                        {
                            "id": "addResourceUserLink_Role",
                            "text": "添加",
                            "icon": "plus",
                            "color": "primary",
                            "state": "new",
                            "hidden": true,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_ROWS_IDS",
                                    "ajaxId": "addRoleLinkToUser_Role",
                                    "changeValueId": "edit_form_changeValue"
                                }
                            ],
                            "toggle": {
                                "type": "state",
                                "toggleProperty": "hidden",
                                "values": [
                                    {
                                        "name": "new",
                                        "value": true
                                    },
                                    {
                                        "name": "edit",
                                        "value": true
                                    },
                                    {
                                        "name": "text",
                                        "value": true
                                    }
                                ]
                            }
                        },
                        {
                            "id": "removeResourceUserLink_Role",
                            "text": "移除",
                            "icon": "plus",
                            "color": "primary",
                            "state": "new",
                            "hidden": true,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_ROWS_IDS",
                                    "ajaxId": "removeRoleLinkToUser_Role",
                                    "changeValueId1": "edit_form_changeValue"
                                }
                            ],
                            "toggle": {
                                "type": "state",
                                "toggleProperty": "hidden",
                                "values": [
                                    {
                                        "name": "new",
                                        "value": true
                                    },
                                    {
                                        "name": "edit",
                                        "value": true
                                    },
                                    {
                                        "name": "text",
                                        "value": true
                                    }
                                ]
                            }
                        }
                    ]
                }
            ],
            "ajaxConfig": [
                {
                    "id": "addRoleLinkToUser_Role",
                    "url": "resource/ADD_USER_TO_ROLE/operate",
                    "urlType": "inner",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "USER_IDS",
                            "type": "checkedItem",
                            "valueName": "ids"
                        },
                        {
                            "name": "ROLE_CODE",
                            "type": "tempValue",
                            "valueName": "ROLE_CODE"
                        }
                    ],
                    "outputParameters": [],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "message.ajax.state.success",
                            "senderId": "afterUserLinkSaveSuccessfully"
                        }
                    ]
                },
                {
                    "id": "removeRoleLinkToUser_Role",
                    "url": "resource/REMOVE_USER_FROM_ROLE/operate",
                    "urlType": "inner",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "USER_IDS",
                            "type": "checkedItem",
                            "valueName": "ids"
                        },
                        {
                            "name": "ROLE_CODE",
                            "type": "tempValue",
                            "valueName": "ROLE_CODE"
                        }
                    ],
                    "outputParameters": [],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "message.ajax.state.success",
                            "senderId": "afterUserLinkRemoveSuccessfully"
                        }
                    ]
                }
            ],
            "linkConfig": [
                {
                    "id": "linkToForm",
                    "link": "/template/dynamic/1Vxbgwvx8Gs6VDydw0UTAzugv027d1NQ",
                    "params": [
                        {
                            "name": "PID",
                            "type": "tempValue",
                            "valueName": "PID"
                        }
                    ]
                }
            ],
            "cascade": {
                "messageSender": [],
                "messageReceiver": [
                    {
                        "id": "afterAddRoleToUserSuccess",
                        "senderId": "system_user_table",
                        "receiveData": [
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "EXECUTE_ACTION",
                                "params": [
                                    {
                                        "pname": "toolbarId",
                                        "cname": "toolbarId",
                                        "valueTo": "tempValue"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "afterRemoveResourceUserLink_User",
                        "senderId": "system_user_table",
                        "receiveData": [
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "EXECUTE_ACTION",
                                "params": [
                                    {
                                        "pname": "toolbarId",
                                        "cname": "toolbarId",
                                        "valueTo": "tempValue"
                                    }
                                ]
                            }
                        ]
                    }
                ]
            }
        },
        {
            "id": "table_add_user_from_role",
            "title": "",
            "titleIcon": "right-circle",
            "component": "cnDataTable",
            "keyId": "ID",
            "changeValue": [],
            "size": "large",
            "isBordered": false,
            "isFrontPagination": false,
            "isPagination": true,
            "isShowSizeChanger": true,
            "showTotal": true,
            "pageSize": 10,
            "showCheckBox": true,
            "pageSizeOptions": [
                10,
                20,
                50,
                100
            ],
            "loadingOnInit": false,
            "loadingConfig": {
                "url": "resource/GET_USER_BY_ROLE/query",
                "method": "get",
                "params": [
                    {
                        "name": "ORG_CODE",
                        "type": "tempValue",
                        "valueName": "PID",
                        "value": "-999"
                    },
                    {
                        "name":"ROLE_CODE",
                        "type":"tempValue",
                        "valueName":"ROLE_CODE"
                    },
                    {
                        "name":"_sort",
                        "type":"value",
                        "value":"SORT ASC"
                    }
                ],
                "filter": []
            },
            "columns": [
                {
                    "title": "ID",
                    "type": "field",
                    "field": "ID",
                    "hidden": true,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "DEPT_ID",
                    "type": "field",
                    "field": "DEPT_ID",
                    "hidden": true,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "姓名",
                    "type": "field",
                    "field": "REAL_NAME",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "昵称",
                    "type": "field",
                    "field": "NIKE_NAME",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "性别",
                    "type": "field",
                    "field": "SEX_TEXT",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "联系方式",
                    "type": "field",
                    "field": "PHONE_NUM",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "邮箱",
                    "type": "field",
                    "field": "EMAIL",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "style": {}
                },
                {
                    "title": "人员关联状态",
                    "type": "field",
                    "field": "USER_IDENTI",
                    "hidden": false,
                    "showFilter": false,
                    "showSort": false,
                    "style": {},
                    "custom": {
                        "type": "tag",
                        "field": "USER_IDENTI",
                        "dataMapping": [
                            {
                                "color": "#6699FF",
                                "field": "USER_IDENTI",
                                "value": "已拥有"
                            },
                            {
                                "color": "#FF0033",
                                "field": "USER_IDENTI",
                                "value": "未拥有"
                            }
                        ]
                    }
                }
            ],
            "rowActions": [],
            "window": [],
            "dialog": [],
            "linkConfig": [],
            "cascade": {
                "messageSender": [
                    {
                        "id": "afterUserLinkSaveSuccessfully",
                        "senderId": "table_add_user_from_role",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "table_add_user_from_role",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "type",
                                        "type": "value",
                                        "value": "success"
                                    },
                                    {
                                        "name": "code",
                                        "type": "value",
                                        "value": "新增成功"
                                    },
                                    {
                                        "name": "field",
                                        "type": "value",
                                        "value": "提示"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "table_add_user_from_role",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "REFRESH",
                                "params": []
                            }
                        ]
                    },
                    {
                        "id": "afterUserLinkRemoveSuccessfully",
                        "senderId": "table_add_user_from_role",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "table_add_user_from_role",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "type",
                                        "type": "value",
                                        "value": "success"
                                    },
                                    {
                                        "name": "code",
                                        "type": "value",
                                        "value": "移除成功"
                                    },
                                    {
                                        "name": "field",
                                        "type": "value",
                                        "value": "提示"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "table_add_user_from_role",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "REFRESH",
                                "params": []
                            }
                        ]
                    }
                ],
                "messageReceiver": [
                    {
                        "id": "receiveTableMessage",
                        "senderId": "table_add_user_from_role",
                        "receiveData": [
                            {
                                "beforeReceive": [],
                                "triggerType": "ACTION",
                                "trigger": "MESSAGE"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "LOAD_REFRESH_DATA"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "ACTION",
                                "trigger": "REFRESH"
                            }
                        ]
                    },
                    {
                        "id": "receiveTreeParams",
                        "senderId": "system_department_tree_001",
                        "receiveData": [
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "REFRESH_AS_CHILD",
                                "params": [
                                    {
                                        "pname": "PID",
                                        "cname": "PID",
                                        "valueTo": "tempValue"
                                    }
                                ]
                            }
                        ]
                    }
                ]
            },
            "condition": [],
            "ajaxConfig": []
        },
        {
            "id": "system_department_tree_001",
            "title": "树",
            "titleIcon": "right-circle",
            "component": "cnTree",
            "keyId": "ID",
            "async": false,
            "showCheckBox": false,
            "expandAll": false,
            "loadingOnInit": true,
            "showLine": false,
            "showSearch": true,
            "rootTitle": "根节点",
            "scroll": {
                "y": "400px"
            },
            "defaultSelectedConfig": {
                "location": {
                    "locationContent": {
                        "hierarchy": 0,
                        "index": 0,
                        "isLeaf": true
                    }
                },
                "default": {
                    "locationContent": {
                        "hierarchy": 0,
                        "index": 0,
                        "isLeaf": true
                    }
                }
            },
            "loadingConfig": {
                "url": "resource/GET_GROUP_LIST/query",
                "method": "get",
                "params": [
                    {
                        "name": "_recursive",
                        "type": "value",
                        "value": true
                    },
                    {
                        "name": "_deep",
                        "type": "value",
                        "value": "-1"
                    },
                    {
                        "name": "_pcName",
                        "type": "value",
                        "value": "PARENT_ID"
                    }
                ],
                "filter": []
            },
            "loadingItemConfig": {
                "url": "resource/GET_GROUP_LIST/query",
                "ajaxType": "get",
                "params": [
                    {
                        "name": "ID",
                        "type": "item",
                        "valueName": "ID"
                    }
                ],
                "filter": []
            },
            "expandConfig": {
                "url": "resource/GET_DEPARTMENT/query",
                "method": "get",
                "params": [
                    {
                        "name": "_root.PID",
                        "type": "item",
                        "valueName": "key",
                        "value": ""
                    },
                    {
                        "name": "_recursive",
                        "type": "value",
                        "value": true
                    },
                    {
                        "name": "_deep",
                        "type": "value",
                        "value": "-1"
                    },
                    {
                        "name": "_pcName",
                        "type": "value",
                        "value": "PARENT_ID"
                    }
                ]
            },
            "columns": [
                {
                    "title": "ID",
                    "type": "key",
                    "field": "ID"
                },
                {
                    "title": "PARENT_ID",
                    "type": "parentId",
                    "field": "PARENT_ID"
                },
                {
                    "title": "NAME",
                    "type": "title",
                    "field": "NAME"
                }
            ],
            "cascade": {
                "messageSender": [
                    {
                        "id": "grid_sender_02",
                        "senderId": "system_department_tree_001",
                        "triggerType": "BEHAVIOR",
                        "trigger": "CLICK_NODE",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "table_add_user_from_role",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "REFRESH_AS_CHILD",
                                "params": [
                                    {
                                        "name": "PID",
                                        "type": "item",
                                        "valueName": "CODE"
                                    }
                                ]
                            }
                        ]
                    }
                ],
                "messageReceiver": [
                ]
            },
            "rowActions": [],
            "dialog": [],
            "condition": [],
            "ajaxConfig": [],
            "beforeTrigger": [],
            "afterTrigger": []
        }
    ]
}'
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'PAGE_SYSTEM_MANEGER_ROLE_ADD'
	SET @PAGE_CODE = 'PAGE_SYSTEM_MANEGER_ROLE_ADD'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = '分配人员'
    SET @SORT = 14
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END

BEGIN
    SET @PAGE_JSON = '{
    "layoutJson": {
        "id": "Operation_Tree_Layout",
        "type": "layout",
        "title": "布局",
        "container": "rows",
        "rows": [
            {
                "cols": [
                    {
                        "id": "col_tree_page",
                        "col": "cc",
                        "type": "col",
                        "titlestate": 1,
                        "title": "",
                        "span": 12,
                        "container": "component",
                        "header": {
                            "title": "页面结构树",
                            "icon": "",
                            "id": ""
                        },
                        "size": {
                            "nzXs": 12,
                            "nzSm": 12,
                            "nzMd": 12,
                            "nzLg": 12,
                            "ngXl": 12,
                            "nzXXl": 12
                        },
                        "bodyStyle": {
                            "min-height": "500px"
                        },
                        "component": {
                            "id": "tree_page_type",
                            "type": "cnTree",
                            "title": "",
                            "container": "cnTree"
                        }
                    },
                    {
                        "id": "col_tree_operation",
                        "col": "cc",
                        "type": "col",
                        "titlestate": 1,
                        "title": "",
                        "span": 12,
                        "container": "component",
                        "header": {
                            "title": "页面操作",
                            "icon": "",
                            "id": "btn_operation_auth"
                        },
                        "size": {
                            "nzXs": 12,
                            "nzSm": 12,
                            "nzMd": 12,
                            "nzLg": 12,
                            "ngXl": 12,
                            "nzXXl": 12
                        },
                        "bodyStyle": {
                            "min-height": "500px"
                        },
                        "component": {
                            "id": "tree_page_operate",
                            "type": "cnTree",
                            "title": "",
                            "container": "cnTree"
                        }
                    }
                ],
                "id": "Operation_rows",
                "type": "row",
                "title": "行",
                "container": "cols"
            }
        ]
    },
    "componentsJson": [
        {
            "id": "tree_page_type",
            "title": "树",
            "titleIcon": "right-circle",
            "component": "cnTree",
            "keyId": "ID",
            "async": false,
            "showCheckBox": false,
            "expandAll": true,
            "loadingOnInit": true,
            "showLine": false,
            "showSearch": true,
            "rootTitle": "根节点",
            "scroll": {
                "y": "400px"
            },
            "defaultSelectedConfig": {
                "location": {
                    "locationContent": {
                        "hierarchy": 0,
                        "index": 0,
                        "isLeaf": true
                    }
                },
                "default": {
                    "locationContent": {
                        "hierarchy": 0,
                        "index": 0,
                        "isLeaf": true
                    }
                }
            },
            "loadingConfig": {
                "url": "resource/GET_PAGE_TREE/query",
                "method": "get",
                "params": [
                    {
                        "name": "_recursive",
                        "type": "value",
                        "value": true
                    },
                    {
                        "name": "_deep",
                        "type": "value",
                        "value": "-1"
                    },
                    {
                        "name": "_pcName",
                        "type": "value",
                        "value": "PARENT_ID"
                    },
                    {
                        "name": "_root.PARENT_ID",
                        "type": "value",
                        "dataType": "nullable",
                        "value": null
                    },
                    {
                        "name": "_root.ID",
                        "type": "tempValue",
                        "valueName": "PAGE_ID"
                    }
                ],
                "filter": []
            },
            "loadingItemConfig": {
                "url": "resource/GET_SYSTEM_DEPT/query",
                "ajaxType": "get",
                "params": [
                    {
                        "name": "ID",
                        "type": "item",
                        "valueName": "ID"
                    }
                ],
                "filter": []
            },
            "expandConfig": {
                "url": "resource/GET_DEPARTMENT/query",
                "method": "get",
                "params": [
                    {
                        "name": "_root.PID",
                        "type": "item",
                        "valueName": "key",
                        "value": ""
                    },
                    {
                        "name": "_recursive",
                        "type": "value",
                        "value": true
                    },
                    {
                        "name": "_deep",
                        "type": "value",
                        "value": "-1"
                    },
                    {
                        "name": "_pcName",
                        "type": "value",
                        "value": "PARENT_ID"
                    }
                ]
            },
            "columns": [
                {
                    "title": "ID",
                    "type": "key",
                    "field": "ID"
                },
                {
                    "title": "PARENT_ID",
                    "type": "parentId",
                    "field": "PARENT_ID"
                },
                {
                    "title": "NAME",
                    "type": "title",
                    "field": "NAME"
                }
            ],
            "cascade": {
                "messageSender": [
                    {
                        "id": "grid_sender_02",
                        "senderId": "tree_page_type",
                        "triggerType": "BEHAVIOR",
                        "trigger": "CLICK_NODE",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "tree_page_operate",
                                "receiverTriggerType": "BEHAVIOR",
                                "receiverTrigger": "REFRESH_AS_CHILD",
                                "params": [
								   {
                                        "name": "MENU_REF_PAGE_ID",
                                        "type": "item",
                                        "valueName": "ID"
                                    },
                                    {
                                        "name": "REF_PAGE_ID",
                                        "type": "item",
                                        "valueName": "LAYOUT_ID"
                                    },
                                    {
                                        "name": "COMPONENT_ID",
                                        "type": "item",
                                        "valueName": "COMPONENT_ID"
                                    },
                                    {
                                        "name": "REF_COMPONENT_ID",
                                        "type": "item",
                                        "valueName": "ID"
                                    },
                                    {
                                        "name": "REF_LAYOUT_ID",
                                        "type": "item",
                                        "valueName": "REF_LAYOUT_ID"
                                    },
                                    {
                                        "name": "REF_LAYOUT_ID",
                                        "type": "item",
                                        "valueName": "REF_LAYOUT_ID"
                                    },
                                    {
                                        "name": "MENU_CODE",
                                        "type": "item",
                                        "valueName": "MENU_CODE"
                                    }
                                ]
                            }
                        ]
                    }
                ],
                "messageReceiver": []
            },
            "rowActions": [],
            "dialog": [],
            "condition": [],
            "ajaxConfig": [],
            "beforeTrigger": [],
            "afterTrigger": []
        },
        {
            "id": "btn_operation_auth",
            "component": "cnToolbar",
            "size": "small",
            "changeValue": [
                {
                    "id": "edit_org_form_changeValue",
                    "params": [
                        {
                            "name": "AFFERENT_ID",
                            "type": "item",
                            "valueName": "ID",
                            "valueTo": "tempValue"
                        }
                    ]
                }
            ],
            "dialog": [],
            "condition": [],
            "beforeTrigger": [],
            "afterTrigger": [],
            "toolbar": [
                {
                    "targetViewId": "tree_page_operate",
                    "text": "显示/隐藏设置",
                    "dropdown": [
                        {
                            "id": "M_refresh",
                            "text": "刷新",
                            "icon": "reload",
                            "color": "text-primary",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "BEHAVIOR",
                                    "trigger": "REFRESH"
                                }
                            ]
                        },
                        {
                            "id": "set_role_org_readable",
                            "text": "显示",
                            "icon": "eye",
                            "color": "text-red-light",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_NODES_BY_ID",
                                    "ajaxId": "set_role_org_readable"
                                }
                            ]
                        },
                        {
                            "id": "btn_hidden_read",
                            "text": "隐藏",
                            "icon": "eye-invisible",
                            "color": "text-red-light",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_NODES_BY_ID",
                                    "ajaxId": "set_role_org_not_readable"
                                }
                            ]
                        },
                        {
                            "id": "btn_cancel_read",
                            "text": "取消授权",
                            "icon": "delete",
                            "color": "text-red-light",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_NODES_BY_ID",
                                    "ajaxId": "set_role_org_none_readable"
                                }
                            ]
                        }
                    ]
                },
                {
                    "targetViewId": "tree_page_operate",
                    "text": "授权设置",
                    "dropdown": [
                        {
                            "id": "m_refresh_auth",
                            "text": "刷新",
                            "icon": "reload",
                            "color": "text-primary",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "BEHAVIOR",
                                    "trigger": "REFRESH"
                                }
                            ]
                        },
                        {
                            "id": "set_role_oper_authable",
                            "text": "允许授权",
                            "icon": "eye",
                            "color": "text-red-light",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_NODES_BY_ID",
                                    "ajaxId": "set_role_oper_authable"
                                }
                            ]
                        },
                        {
                            "id": "set_role_oper_not_authable",
                            "text": "禁止授权",
                            "icon": "eye-invisible",
                            "color": "text-red-light",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_NODES_BY_ID",
                                    "ajaxId": "set_role_oper_not_authable"
                                }
                            ]
                        },
                        {
                            "id": "set_role_oper_none_authable",
                            "text": "取消授权",
                            "icon": "delete",
                            "color": "text-red-light",
                            "hidden": false,
                            "disabled": false,
                            "execute": [
                                {
                                    "triggerType": "OPERATION",
                                    "trigger": "EXECUTE_CHECKED_NODES_BY_ID",
                                    "ajaxId": "set_role_oper_none_authable"
                                }
                            ]
                        }
                    ]
                }
            ],
            "ajaxConfig": [
                {
                    "id": "set_role_org_readable",
                    "url": "resource/ADD_OPERATE_READ_AUTH1/operate",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "BUTTON_IDS",
                            "type": "item",
                            "valueName": "ids"
                        },
                        {
                            "name": "R_ALLOW",
                            "type": "value",
                            "value": "-1"
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_FLAG",
                            "type": "value",
                            "value": 1
                        },
                        {
                            "name": "AUPE_ID",
                            "type": "tempValue",
                            "valueName": "AUPE_ID"
                        },
                        {
                            "name": "REF_MAIN_PAGE_ID",
                            "type": "tempValue",
                            "valueName": "PAGE_ID"
                        },
                        {
                            "name": "REF_PAGE_ID",
                            "type": "tempValue",
                            "valueName": "MENU_REF_PAGE_ID"
                        },
                        {
                            "name": "REF_LAYOUT_ID",
                            "type": "tempValue",
                            "valueName": "REF_LAYOUT_ID"
                        },
                        {
                            "name": "MENU_CODE",
                            "type": "tempValue",
                            "valueName": "MENU_CODE"
                        },
                        {
                            "name": "COMPONENT_ID",
                            "type": "tempValue",
                            "valueName": "COMPONENT_ID"
                        }
                    ],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "设置成功",
                            "senderId": "afterSetAuthMenuFlagSuccess"
                        }
                    ]
                },
                {
                    "id": "set_role_org_not_readable",
                    "url": "resource/ADD_OPERATE_READ_AUTH1/operate",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "BUTTON_IDS",
                            "type": "item",
                            "valueName": "ids"
                        },
                        {
                            "name": "R_ALLOW",
                            "type": "value",
                            "value": "-1"
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_FLAG",
                            "type": "value",
                            "value": 2
                        },
                        {
                            "name": "AUPE_ID",
                            "type": "tempValue",
                            "valueName": "AUPE_ID"
                        },
                        {
                            "name": "REF_MAIN_PAGE_ID",
                            "type": "tempValue",
                            "valueName": "PAGE_ID"
                        },
                        {
                            "name": "REF_PAGE_ID",
                            "type": "tempValue",
                            "valueName": "MENU_REF_PAGE_ID"
                        },
                        {
                            "name": "MENU_ID",
                            "type": "tempValue",
                            "valueName": "MENU_ID"
                        },
                        {
                            "name": "COMPONENT_ID",
                            "type": "tempValue",
                            "valueName": "COMPONENT_ID"
                        }
                    ],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "设置成功",
                            "senderId": "afterSetAuthMenuFlagSuccess"
                        }
                    ]
                },
                {
                    "id": "set_role_org_none_readable",
                     "url": "resource/ADD_OPERATE_READ_AUTH1/operate",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "BUTTON_IDS",
                            "type": "item",
                            "valueName": "ids"
                        },
                        {
                            "name": "R_ALLOW",
                            "type": "value",
                            "value": "-1"
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_FLAG",
                            "type": "value",
                            "value": 0
                        },
                        {
                            "name": "AUPE_ID",
                            "type": "tempValue",
                            "valueName": "AUPE_ID"
                        },
                        {
                            "name": "REF_MAIN_PAGE_ID",
                            "type": "tempValue",
                            "valueName": "PAGE_ID"
                        },
                        {
                            "name": "REF_PAGE_ID",
                            "type": "tempValue",
                            "valueName": "MENU_REF_PAGE_ID"
                        },
                        {
                            "name": "MENU_ID",
                            "type": "tempValue",
                            "valueName": "MENU_ID"
                        },
                        {
                            "name": "COMPONENT_ID",
                            "type": "tempValue",
                            "valueName": "COMPONENT_ID"
                        }
                    ],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "设置成功",
                            "senderId": "afterSetAuthMenuFlagSuccess"
                        }
                    ]
                },
                {
                    "id": "set_role_oper_authable",
                    "url": "resource/SET_OPERATION_AUTH_STATE_PROC/operate",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "BUTTON_IDS",
                            "type": "item",
                            "valueName": "ids"
                        },
                        {
                            "name": "ALLOW_RESULT",
                            "type": "value",
                            "value": -1
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_FLAG",
                            "type": "value",
                            "value": 1
                        },
                        {
                            "name": "AUPE_ID",
                            "type": "tempValue",
                            "valueName": "AUPE_ID"
                        },
                        {
                            "name": "REF_MAIN_PAGE_ID",
                            "type": "tempValue",
                            "valueName": "PAGE_ID"
                        },
                        {
                            "name": "REF_PAGE_ID",
                            "type": "tempValue",
                            "valueName": "MENU_REF_PAGE_ID"
                        },
                        {
                            "name": "REF_LAYOUT_ID",
                            "type": "tempValue",
                            "valueName": "REF_LAYOUT_ID"
                        },
                        {
                            "name": "MENU_CODE",
                            "type": "tempValue",
                            "valueName": "MENU_CODE"
                        },
                        {
                            "name": "COMPONENT_ID",
                            "type": "tempValue",
                            "valueName": "COMPONENT_ID"
                        }
                    ],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "设置成功",
                            "senderId": "afterSetAuthMenuFlagSuccess"
                        }
                    ]
                },
                {
                    "id": "set_role_oper_not_authable",
                    "url": "resource/SET_OPERATION_AUTH_STATE_PROC/operate",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "BUTTON_IDS",
                            "type": "item",
                            "valueName": "ids"
                        },
                        {
                            "name": "ALLOW_RESULT",
                            "type": "value",
                            "value": -1
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_FLAG",
                            "type": "value",
                            "value": 2
                        },
                        {
                            "name": "AUPE_ID",
                            "type": "tempValue",
                            "valueName": "AUPE_ID"
                        },
                        {
                            "name": "REF_MAIN_PAGE_ID",
                            "type": "tempValue",
                            "valueName": "PAGE_ID"
                        },
                        {
                            "name": "REF_PAGE_ID",
                            "type": "tempValue",
                            "valueName": "MENU_REF_PAGE_ID"
                        },
                        {
                            "name": "MENU_ID",
                            "type": "tempValue",
                            "valueName": "MENU_ID"
                        },
                        {
                            "name": "COMPONENT_ID",
                            "type": "tempValue",
                            "valueName": "COMPONENT_ID"
                        }
                    ],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "设置成功",
                            "senderId": "afterSetAuthMenuFlagSuccess"
                        }
                    ]
                },
                {
                    "id": "set_role_oper_none_authable",
                     "url": "resource/SET_OPERATION_AUTH_STATE_PROC/operate",
                    "ajaxType": "post",
                    "params": [
                        {
                            "name": "BUTTON_IDS",
                            "type": "item",
                            "valueName": "ids"
                        },
                        {
                            "name": "ALLOW_RESULT",
                            "type": "value",
                            "value": -1
                        },
                        {
                            "name": "MESSAGE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "MESSAGE_TYPE",
                            "type": "value",
                            "value": "output"
                        },
                        {
                            "name": "AUTH_FLAG",
                            "type": "value",
                            "value": 0
                        },
                        {
                            "name": "AUPE_ID",
                            "type": "tempValue",
                            "valueName": "AUPE_ID"
                        },
                        {
                            "name": "REF_MAIN_PAGE_ID",
                            "type": "tempValue",
                            "valueName": "PAGE_ID"
                        },
                        {
                            "name": "REF_PAGE_ID",
                            "type": "tempValue",
                            "valueName": "MENU_REF_PAGE_ID"
                        },
                        {
                            "name": "MENU_ID",
                            "type": "tempValue",
                            "valueName": "MENU_ID"
                        },
                        {
                            "name": "COMPONENT_ID",
                            "type": "tempValue",
                            "valueName": "COMPONENT_ID"
                        }
                    ],
                    "result": [
                        {
                            "name": "data",
                            "showMessageWithNext": 0,
                            "message": "设置成功",
                            "senderId": "afterSetAuthMenuFlagSuccess"
                        }
                    ]
                }
            ],
            "cascade": {
                "messageSender": [],
                "messageReceiver": []
            }
        },
        {
            "id": "tree_page_operate",
            "title": "树",
            "titleIcon": "right-circle",
            "component": "cnTree",
            "keyId": "ID",
            "async": false,
            "showCheckBox": true,
            "expandAll": true,
            "loadingOnInit": false,
            "showLine": false,
            "rootTitle": "根节点",
		    "checkStrictlyShow":true,
            "checkStrictly": false,
            "enableState": true,
            "loadingConfig": {
                "url": "resource/GET_AUTH_LAYOUT_STRUCTURE/query",
                "method": "get",
                "params": [
                    {
                        "name": "_recursive",
                        "type": "value",
                        "value": true
                    },
                    {
                        "name": "_deep",
                        "type": "value",
                        "value": "-1"
                    },
                    {
                        "name": "_pcName",
                        "type": "value",
                        "value": "REF_PARENT_ID"
                    },
                    {
                        "name": "_root.REF_PARENT_ID",
                        "type": "value",
                        "dataType": "nullable",
                        "value": null
                    },
                    {
                        "name": "PAGE_CODE",
                        "type": "tempValue",
                        "valueName": "REF_PAGE_ID"
                    },
				  {
                        "name": "OBJ_REF",
                        "type": "tempValue",
                        "valueName": "ROLE_CODE"
                    },
				  {
                        "name": "MENU_REF_PAGE_ID",
                        "type": "tempValue",
                        "valueName": "MENU_REF_PAGE_ID"
                    },
                    {
                          "name": "LAYOUT_VERSION",
                          "type": "tempValue",
                          "valueName": "PAGE_VERSION"
                      }
                ],
                "filter": []
            },
            "expandConfig": {
                "url": "resource/GET_LAYOUT_STRUCTURE/query",
                "method": "get",
                "params": [
                    {
                        "name": "_root.REF_PARENT_ID",
                        "type": "item",
                        "valueName": "key",
                        "value": ""
                    },
                    {
                        "name": "_recursive",
                        "type": "value",
                        "value": true
                    },
                    {
                        "name": "_deep",
                        "type": "value",
                        "value": "2"
                    },
                    {
                        "name": "_pcName",
                        "type": "value",
                        "value": "REF_PARENT_ID"
                    }
                ]
            },
            "columns": [
                {
                    "title": "ID",
                    "type": "key",
                    "field": "ID"
                },
                {
                    "title": "REF_PARENT_ID",
                    "type": "parentId",
                    "field": "REF_PARENT_ID"
                },
                {
                    "title": "NAME",
                    "type": "title",
                    "field": "REF_TITLE"
                }
            ],
            "cascade": {
                "messageSender": [
                    {
                        "id": "afterSetAuthMenuFlagSuccess",
                        "senderId": "tree_page_operate",
                        "triggerMoment": "after",
                        "sendData": [
                            {
                                "beforeSend": {},
                                "reveicerId": "tree_page_operate",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "MESSAGE",
                                "params": [
                                    {
                                        "name": "message",
                                        "type": "returnValue",
                                        "valueName": "MESSAGE"
                                    },
                                    {
                                        "name": "type",
                                        "type": "returnValue",
                                        "valueName": "MESSAGE_TYPE"
                                    }
                                ]
                            },
                            {
                                "beforeSend": {},
                                "reveicerId": "tree_page_operate",
                                "receiverTriggerType": "ACTION",
                                "receiverTrigger": "CHANGE_CHECKED_NODE_DATA",
                                "params": [
                                    {
                                        "name": "R_ALLOW",
                                        "type": "returnValue",
                                        "valueName": "R_ALLOW"
                                    },
                                    {
                                        "name": "W_ALLOW",
                                        "type": "returnValue",
                                        "valueName": "W_ALLOW"
                                    },
                                    {
                                        "name": "AUTH_ALLOW",
                                        "type": "returnValue",
                                        "valueName": "AUTH_ALLOW"
                                    },
                                    {
                                        "name": "AUTH_ALLOW",
                                        "type": "returnValue",
                                        "valueName": "ALLOW_RESULT"
                                    }
                                ]
                            }
                        ]
                    }
                ],
                "messageReceiver": [
				  {
                        "id": "s_201",
                        "senderId": "tree_page_type",
                        "receiveData": [
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "REFRESH_AS_CHILD",
                                "params": [
                                    {
                                        "pname": "REF_PAGE_ID",
                                        "cname": "REF_PAGE_ID",
                                        "valueTo": "tempValue"
                                    },
								    {
                                        "pname": "MENU_REF_PAGE_ID",
                                        "cname": "MENU_REF_PAGE_ID",
                                        "valueTo": "tempValue"
                                    },
                                    {
                                        "pname": "COMPONENT_ID",
                                        "cname": "COMPONENT_ID",
                                        "valueTo": "tempValue"
                                    },
                                    {
                                        "pname": "REF_COMPONENT_ID",
                                        "cname": "REF_COMPONENT_ID",
                                        "valueTo": "tempValue"
                                    },
                                    {
                                        "pname": "REF_LAYOUT_ID",
                                        "cname": "REF_LAYOUT_ID",
                                        "valueTo": "tempValue"
                                    },
                                    {
                                        "pname": "MENU_CODE",
                                        "cname": "MENU_CODE",
                                        "valueTo": "tempValue"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "id": "s_201",
                        "senderId": "tree_page_operate",
                        "receiveData": [
                            {
                                "triggerType": "ACTION",
                                "trigger": "APPEND_CHILD_TO_SELECTED_NODE"
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "ACTION",
                                "trigger": "MESSAGE",
                                "params": []
                            },
                            {
                                "beforeReceive": [],
                                "triggerType": "BEHAVIOR",
                                "trigger": "REFRESH_AS_CHILD",
                                "params": [
                                    {
                                        "pname": "REF_PAGE_ID",
                                        "cname": "REF_PAGE_ID",
                                        "valueTo": "tempValue"
                                    },
                                    {
                                        "pname": "COMPONENT_ID",
                                        "cname": "COMPONENT_ID",
                                        "valueTo": "tempValue"
                                    },
                                    {
                                        "pname": "REF_COMPONENT_ID",
                                        "cname": "REF_COMPONENT_ID",
                                        "valueTo": "tempValue"
                                    }
                                ]
                            },
                            {
                                "triggerType": "ACTION",
                                "trigger": "CHANGE_CHECKED_NODE_DATA"
                            }
                        ]
                    }
                ]
            },
            "iconState": [
                {
                    "id": "001",
                    "field": "R_ALLOW",
                    "position": "left",
                    "iconConfig": {
                        "pre": {
                            "type": "condition",
                            "caseValue": {
                                "type": "currentValue",
                                "valueName": "COMPONENT_ATTR_TYPE",
                                "regular": "toolbar|rowActions",
                                "value": ""
                            }
                        },
                        "enableLabel": false,
                        "enableTooltip": true,
                        "enableIcon": true,
                        "enableDefaultValue": true,
                        "enableSwitch": false,
                        "showTheme": "icon",
                        "enableColor": "",
                        "enableSelected": false,
                        "enable": true,
                        "defaultValue": 0,
                        "initObject": {
                            "label": "",
                            "color": "green",
                            "value": 1,
                            "icon": "eye"
                        },
                        "options": [
                            {
                                "label": "",
                                "color": "green",
                                "value": 1,
                                "icon": "eye",
                                "tooltipTitle": "【数据可见】"
                            },
                            {
                                "label": "",
                                "color": "red",
                                "value": 2,
                                "icon": "eye-invisible",
                                "tooltipTitle": "【数据不可见】"
                            },
                            {
                                "label": "",
                                "color": "blue",
                                "value": 0,
                                "icon": "file-unknown",
                                "tooltipTitle": "【未设置可见】"
                            }
                        ]
                    }
                },
                {
                    "id": "002",
                    "field": "W_ALLOW",
                    "position": "left",
                    "iconConfig": {
                        "pre": {
                            "type": "default",
                            "caseValue": {
                                "type": "",
                                "valueName": "",
                                "regular": "",
                                "value": ""
                            }
                        },
                        "enableLabel": false,
                        "enableTooltip": true,
                        "enableIcon": true,
                        "enableDefaultValue": true,
                        "enableSwitch": false,
                        "showTheme": "icon",
                        "enableColor": "",
                        "enableSelected": false,
                        "enable": true,
                        "defaultValue": "003",
                        "initObject": {
                            "label": "",
                            "color": "green",
                            "value": 1,
                            "icon": "eye"
                        },
                        "options": [
                            {
                                "label": "",
                                "color": "green",
                                "value": 1,
                                "icon": "edit",
                                "tooltipTitle": "【允许写入】"
                            },
                            {
                                "label": "",
                                "color": "red",
                                "value": 2,
                                "icon": "stop",
                                "tooltipTitle": "【禁止写入】"
                            },
                            {
                                "label": "",
                                "color": "blue",
                                "value": 0,
                                "icon": "file-unknown",
                                "tooltipTitle": "【未设置写入】"
                            }
                        ]
                    }
                },
                {
                    "id": "003",
                    "field": "AUTH_ALLOW",
                    "position": "left",
                    "iconConfig": {
                        "pre": {
                            "type": "default",
                            "caseValue": {
                                "type": "",
                                "valueName": "",
                                "regular": "",
                                "value": ""
                            }
                        },
                        "enableLabel": false,
                        "enableTooltip": true,
                        "enableIcon": true,
                        "enableDefaultValue": true,
                        "enableSwitch": false,
                        "showTheme": "icon",
                        "enableColor": "",
                        "enableSelected": false,
                        "enable": true,
                        "defaultValue": "003",
                        "initObject": {
                            "label": "",
                            "color": "green",
                            "value": 1,
                            "icon": "safety-certificate"
                        },
                        "options": [
                            {
                                "label": "",
                                "color": "green",
                                "value": 1,
                                "icon": "safety-certificate",
                                "tooltipTitle": "【可授权】"
                            },
                            {
                                "label": "",
                                "color": "red",
                                "value": 2,
                                "icon": "stop",
                                "tooltipTitle": "【禁止授权】"
                            },
                            {
                                "label": "",
                                "color": "blue",
                                "value": 0,
                                "icon": "file-unknown",
                                "tooltipTitle": "【未设置授权】"
                            }
                        ]
                    }
                }
            ],
            "rowActions": [],
            "dialog": [],
            "condition": [],
            "ajaxConfig": [],
            "beforeTrigger": [],
            "afterTrigger": []
        }
    ]
}'
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'LAYOUT_SYSTEM_PUBLIC_PAGE_AUTH_OPERATE'
	SET @PAGE_CODE = 'PAGE_SYSTEM_PUBLIC_PAGE_AUTH_OPERATE'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = '操作授权'
    SET @SORT = 15
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END

BEGIN
    SET @PAGE_JSON = ''
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'LAYOUT_PAGE_CREATE'
	SET @PAGE_CODE = 'PAGE_CREATE'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = '页面创建'
    SET @SORT = 16
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END

BEGIN
    SET @PAGE_JSON = ''
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'LAYOUT_SYSTEM_MANEGER_BACKUP_RESTORE'
	SET @PAGE_CODE = 'PAGE_SYSTEM_MANEGER_BACKUP_RESTORE'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = '备份与还原'
    SET @SORT = 17
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END

BEGIN
    SET @PAGE_JSON = ''
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'LAYOUT_AUTHORITY_MANEGER_SETTING_OPERATE'
	SET @PAGE_CODE = 'PAGE_AUTHORITY_MANEGER_SETTING_OPERATE'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = '操作权限设置'
    SET @SORT = 18
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END

BEGIN
    SET @PAGE_JSON = ''
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'LAYOUT_AUTHORITY_MANEGER_SETTING_MENU'
	SET @PAGE_CODE = 'PAGE_AUTHORITY_MANEGER_SETTING_MENU'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = '菜单权限设置'
    SET @SORT = 19
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END

BEGIN
    SET @PAGE_JSON = ''
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'LAYOUT_AUTHORITY_MANEGER_READ_OPERATE'
	SET @PAGE_CODE = 'PAGE_AUTHORITY_MANEGER_READ_OPERATE'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = '操作权限查看'
    SET @SORT = 20
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END

BEGIN
    SET @PAGE_JSON = ''
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'LAYOUT_AUTHORITY_MANEGER_READ_MENU'
	SET @PAGE_CODE = 'PAGE_AUTHORITY_MANEGER_READ_MENU'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = '菜单权限查看'
    SET @SORT = 21
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END

BEGIN
    SET @PAGE_JSON = ''
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'LAYOUT_MODELING_BUSINESS_RES_SQL_LINK'
	SET @PAGE_CODE = 'PAGE_MODELING_BUSINESS_RES_SQL_LINK'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = '关联SQL资源'
    SET @SORT = 22
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END

BEGIN
    SET @PAGE_JSON = ''
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'LAYOUT_MODELING_BUSINESS_RES_SQL'
	SET @PAGE_CODE = 'PAGE_MODELING_BUSINESS_RES_SQL'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = 'SQL资源列表'
    SET @SORT = 23
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END

BEGIN
    SET @PAGE_JSON = ''
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'LAYOUT_MODELING_BUSINESS_RES_COLUMN'
	SET @PAGE_CODE = 'PAGE_MODELING_BUSINESS_RES_COLUMN'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = '关联列名'
    SET @SORT = 24
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END

BEGIN
    SET @PAGE_JSON = ''
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'LAYOUT_MODELING_BUSINESS_RES_TABLE'
	SET @PAGE_CODE = 'PAGE_MODELING_BUSINESS_RES_TABLE'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = '关联表资源'
    SET @SORT = 25
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END

BEGIN
    SET @PAGE_JSON = ''
    SET @LAYOUT_ID = NEWID()
	SET @LAYOUT_CODE = 'LAYOUT_PAGE_PAGE_DESIGN'
	SET @PAGE_CODE = 'PAGE_PAGE_DESIGN'
    SET @VERSION = 'V01'
    SET @LAYOUT_NAME = '配置DESIGN'
    SET @SORT = 25
	INSERT INTO dbo.SMT_SETTING_LAYOUT
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_JSON ,
          STATE ,
          REMARK ,
          CMPT_TYPE ,
          CODE ,
          JSON ,
          PAGE_CODE ,
          VERSION ,
          NAME ,
          SORT
        )
VALUES  ( @LAYOUT_ID , -- ID - varchar(36)
          @CREATE_USER_ID, -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @PAGE_JSON , -- PAGE_JSON - varchar(max)
          @STATE , -- STATE - smallint
          @REMARK , -- REMARK - varchar(200)
          @CMPT_TYPE, -- CMPT_TYPE - varchar(20)
          @LAYOUT_CODE , -- CODE - varchar(50)
          @JSON , -- JSON - varchar(max)
          @PAGE_CODE , -- PAGE_ID - varchar(36)
          @VERSION , -- VERSION - varchar(50)
          @LAYOUT_NAME , -- NAME - varchar(50)
          @SORT  -- SORT - smallint
        )
END