Feature: WEB Tienda Demoblaze

  Background: 
    * configure driver = { type: 'chrome' }
    
		* def User = 'BaufestAutomation'		   
    * def Password = 'prueba'
    * def product = 'Sony vaio i5'

  Scenario: Create an user
    Given driver 'https://www.demoblaze.com/index.html'
    When click(signUp)
    * delay(500)
    And input(signUser,User)
    And input(signPass,Password)
    * delay(500)
    And click(signUpButton)
    * delay(800)
    And dialog(true)
    Then match driver.dialogText == 'Sign up successful.'

  Scenario: Login and logout user
    Given driver 'https://www.demoblaze.com/index.html'
    When click(logIn)
    * delay(500)
    And input(logInUser,User)
    And input(logInPassword,Password)
    * delay(500)
    And click(logInButton)
    * delay(5000)
    Then locate(welcomeUser)
    When click(logOut)
    Then locate(signUp)

  Scenario: Agregar una laptop
    Given driver 'https://www.demoblaze.com/index.html'
    When click(logIn)
    * delay(500)
    And input(logInUser,User)
    And input(logInPassword,Password)
    * delay(500)
    And click(logInButton)
    Then locate(welcomeUser)
     * delay(500)
    When click(laptop)
    Then waitFor(addToCart)
    When click(addToCart)
    * delay(800)
    And dialog(true)
    Then match driver.dialogText == 'Product added.'

  Scenario: Comprobar que se agregó al carrito.
    Given driver 'https://www.demoblaze.com/index.html'
    When click(logIn)
    * delay(500)
    And input(logInUser,User)
    And input(logInPassword,Password)
    * delay(500)
    And click(logInButton)
    Then locate(welcomeUser)
     * delay(500)
    When click(cart)
    * delay(500)
    Then waitForText(productsTable, product)
