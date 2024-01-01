Feature: WEB SERVICES petstore

  Background: 
    * url 'https://petstore.swagger.io'
    * def mascota = read('testData.json')


  Scenario: Agregar una mascota
    Given path '/v2/pet'
    When request mascota
    And method post
    Then status 200
    And match response ==  mascota
    And print response

  Scenario: Obtener una mascota existente
    Given path '/v2/pet/'+ mascota.id
    When method get
    Then status 200
    And match response == mascota
    And print response

  Scenario: Modificar una mascota existente
    Given path '/v2/pet'
    * set mascota.status = "sold"
    When request mascota
    When method put
    Then status 200
    And match response ==  mascota
    And print response
