*** Settings ***
Library               SeleniumLibrary

*** Variables ***
${url}                        https://www.techlistic.com/p/selenium-practice-form.html
${browser}                    edge

${input_firstName}            //input[@name="firstname"]
${input_lastname}             //input[@name="lastname"]

${gender_id}                  sex
${gender_value}               Female
${experience_id}              exp
${experience_value}           3

${input_date}                 //input[@id="datepicker"]
${input_profession}           //input[@value="Automation Tester"]
${input_tool}                 //input[@value="Selenium Webdriver"]

${continents_id}              continents
${continents_value}           Antartica
${selenium_commands_id}       selenium_commands
${selenium_commands_value}    Browser Commands

# ${input_image}              //input[@id="photo"]
${submit_button}              //button[@id="submit"] 


*** Keywords ***
abrir navegador e acessar o site
    Open Browser                           ${url}            ${browser}
    Maximize Browser Window
    Sleep                                  1s

preencher campos
    Input text                             ${input_firstName}             Gisele
    Sleep                                  1s
    Input text                             ${input_lastname}              Sodré
    Sleep                                  1s
    Select Radio Button                    ${gender_id}                   ${gender_value} 
    Sleep                                  1s
    Select Radio Button                    ${experience_id}               ${experience_value}
    Sleep                                  1s
    Input text                             ${input_date}                  04/07/1987
    Sleep                                  1s
    Select Checkbox                        ${input_profession}
    Sleep                                  1s
    Select Checkbox                        ${input_tool}
    Sleep                                  1s
    Select From List By Label              ${continents_id}               ${continents_value}  
    Sleep                                  1s
    Select From List By Label              ${selenium_commands_id}        ${selenium_commands_value}
    Sleep                                  1s
    ...
    # TODO CONTINUAR DAQUI MEU APRENDIZADO
    # Click Element                          ${input_image}         image.png
    # Click Link                             control-group

enviar formulário
    Click Button                           ${submit_button}
    Sleep                                  3s    
    

fechar navegador
    Close Browser


*** Test Cases ***
Cenário 1: preencher formulário
    abrir navegador e acessar o site
    preencher campos
    enviar formulário
    fechar navegador