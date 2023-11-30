*** Settings ***
Library   RPA.Windows


*** Tasks ***

Test
    Windows Run     MyCRM.exe
    Control Window   My CRM (Sample App)
    Send Keys    id:textBoxPeopleFirstName   Sweta
    Click    id:radioButtonFemale
    Select    id:comboBoxPeopleAddressState    WA
    Click    id:checkBox1
    Click    name:Other
    Click    id:button1
    Click    id:2
