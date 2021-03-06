--CREATE DATABASE questions_database;

-- INSERT INTO answers (question_id, answer, rating)
-- VALUES (8, 'It just does', 0);

-- INSERT INTO answers (question_id, answer, rating)                                                                                                            
-- VALUES (2, 'Add languages', 0);

CREATE TABLE questions (
  id SERIAL PRIMARY KEY NOT NULL,
  question TEXT NOT NULL
);

INSERT INTO questions (question)
VALUES ('What is hoisting?'),
('How you would localize an application?'),
('What are some tools and strategies you use to prevent shipping unstable code to production?'), 
('What does CORS stand for and what issue does it address?'),
('What is a pseudo class?'),
('What’s the difference between display: inline and display: inline-block?'),
('What does event bubbling or event propagation mean?'),
('What is the concept of state in React?'),
('What is the event loop?'),
('What are HTML data attributes?'),
('What is the purpose of article, section, header and footer tags? Please explain with an example and why we should not use divs.'),
('What could we use instead of <b> tags for bold and <i> tags for italics to make our HTML more semantic?'),
('What are the benefits of using TypeScript?'),
('What is an example of a self-closing HTML tag?'),
('What advantages does React offer?'),
('What disadvantages are there to React?'),
('What is a closure, and how/why would you use one?'),
('What are the pros and cons of using Promises instead of callbacks?'),
('What is "use strict";? What are the advantages and disadvantages to using it?'),
('What’s the difference between undefined and null?'),
('What does event bubbling or event propagation mean?'),
('Why is it, in general, a good idea to leave the global scope of a website as-is and never touch it?'),
('What is the difference between end to end testing vs unit-testing?'),
('What’s the difference between window.onload and onDocumentReady?'),
('Why is it generally a good idea to position CSS <link>s between <head></head> and JS <script>s just before </body>? Do you know any exceptions?'),
('In an HTML file, what does the ‘doctype’ keyword do?'),
('What are some popular NodeJS Modules?'),
('What do NPM and Yarn do?'),
('What is a mix-in in SASS?'),
('What is a good use-case for hooks in React?'),
('Inside What life cycle methods should you do fetch calls in React?'),
('What is prop drilling and why should it be avoided?'),
('What is the z-index and how does stacking work?'),
('What does the term ‘MVC’ mean? Explain how an application is architected when following MVC patterns.'),
('What are three strategies for fixing cross-browser inconsistencies?'),
('What are two advantages of testing your code?'),
('What is your favorite hosting platform for your projects, and why?'),
('How would you describe the request-response cycle?'),
('What factors influence whether you’ll take a progressive enhancement vs. graceful degradation approach to building an application?'),
('When if ever, would you use babel?'),
('What is your approach to project management and organization?'),
('What is the main difference between Prototypal and Class inheritance?'),
('When and why should I Use Webpack?'),
('On a <script> tag, what are async and defer attributes?'),
('What is the difference between == and ===?'),
('How can you share code between files?'),
('What is the the difference between synchronous and asynchronous functions?'),
('What tools and techniques do you use debugging JavaScript code?'),
('What language constructions do you use for iterating over object properties and array items?'),
('How do you organize your code? (module pattern, classical inheritance?)'),
('What was the most interesting thing you learned about coding at Turing?'),
('How do you go about deploying a project with GH pages, Heroku, or any other service?'),
('How does the web work?');

CREATE TABLE answers (
  id SERIAL PRIMARY KEY NOT NULL,
  question_id INTEGER NOT NULL REFERENCES questions(id),
  answer TEXT NOT NULL,
  rating integer NOT NULL,
  answer_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);