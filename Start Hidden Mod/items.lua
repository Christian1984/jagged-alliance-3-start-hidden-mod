return {
    PlaceObj('ModItemCode', {
        'name', "StartHiddenModScript",
        'CodeFileName', "Code/StartHiddenModScript.lua"
    }), 
    PlaceObj('ModItemOptionChoice', {
        'name', "StartHiddenModCameraTacMaxZoom", 
        'comment',
        "Vanilla Default = 130, Mod Default = 300", 
        'DisplayName',
        "Maximum Camera Zoom", 
        'Help',
        "Defines how far the camera may zoom out (Vanilla Default = 130)",
        'DefaultValue', "300", 
        'ChoiceList', {
            "130", 
            "150", 
            "200", 
            "250", 
            "300", 
            "350", 
            "400", 
            "500", 
            "600", 
            "700", 
            "800"
        }
    }), 
    PlaceObj('ModItemOptionChoice', {
        'name', "StartHiddenModCameraTacMinZoom", 
        'comment', "Vanilla Default = 65, Mod Default = 70", 
        'DisplayName', "Minimum Camera Zoom", 
        'Help', "Defines how far the camera may zoom in (Vanilla Default = 65)",
        'DefaultValue', "70", 
        'ChoiceList',
        {
            "100", 
            "90", 
            "80", 
            "70", 
            "65", 
            "60", 
            "50", 
            "40", 
            "30", 
            "20", 
            "10"
        }
    }), 
    PlaceObj('ModItemOptionChoice', {
        'name', "StartHiddenModCameraTacMaxZoomAI", 
        'comment', "Vanilla Default = 130, Mod Default = 130", 
        'DisplayName', "Maximum Camera Zoom During AI Turns", 
        'Help', "Defines the camera's zoom level during enemy turns (Vanilla Default = 130)",
        'DefaultValue', "130", 
        'ChoiceList', {
            "100", 
            "110", 
            "120", 
            "130", 
            "140", 
            "150", 
            "200", 
            "250", 
            "300", 
            "350", 
            "400", 
            "500", 
            "600", 
            "700", 
            "800"}
    }),
    PlaceObj('ModItemOptionChoice', {
        'name', "StartHiddenModCameraTacZoomStep", 
        'comment', "Vanilla Default = 25, Mod Default = 50", 
        'DisplayName',"Zoom Step Size", 
        'Help', "Defines how fast the camera zoom (Vanilla Default = 25)",
        'DefaultValue', "50", 
        'ChoiceList',
        {
            "5", 
            "10", 
            "15", 
            "20", 
            "25", 
            "50", 
            "75", 
            "100", 
            "125"
        }
    })
}
