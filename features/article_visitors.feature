Feature: Blog page
  Visitors to Brian's site
  Should be able to read his blog posts
  To increase their engagement with his ministry


  Background:
    Given an article by "lipsum.com" titled "What is Lorem Ipsum?" with body:
      """
      Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
      """
    And an article by "lipsum.com" titled "Where Does it Come From?" with body:
      """
    Given an article by "tester" titled "Second Article" with body:
      """
      Hello again!
      """

      Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

      The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.

      """


  Scenario: Viewing articles home page
    Given I am on the home page
    And I click on "Articles"
    Then I should be on the "Articles" page
    Then I should see a list of blog posts
    And each blog post should have a picture
    And I should see the first few lines of each post

  Scenario:  Viewing an individual article
    Given I am on the "Articles" page
    And I click on an article title
    Then I should be on the article page
    And I should see the full text of the article
    And I should see the article photo

