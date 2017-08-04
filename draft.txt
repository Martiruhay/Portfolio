# Planning the application

  1. Annswer questions
      - What am I building?
      - Who am I building it for?
      - What features does it need to have?
  2. User stories
  3. Model the data
  4. Think thhrough the pages I need in my app


## Questions

  1. What am I building?
    I am builiding a personal site. A place where I can blog, share and post 
    work I do to show to someone interested on it, and contact information.
  
  2. Who am I building it for?
    I am building it for myself to have an index of things I do, and also for
    anyone interested on seeing it. Potential employers also are a target.
  
  3. What features will it have?
    - Posts
        - CRUD
        - Markdown
        - Comments (Disqus)
        
    - Projects
        - CRUD
    
    - Contact
        - Contact form
        - Sendgrid
    
    - User (Devise)

## User stories

  - As an admin, I want to be able to create posts so that I can share what I 
    do and what I know.
  - As an admin I want to edit and delete posts so that I can manage the site.
  - As an admin I want to be able to write posts in markdown format so that 
    it's easy for me to write posts.
  - As an admin I want to show the visitors and potential employers examples of 
    my work.
    
  - As a user I want to be able to leave comments on a post so that the author 
    gets feedback.
  - As a user I want to be able to contact the author in order to ask anything, 
    give my opinion or recruit him.

## Modeling the data
  
  **Post**
      title:string
      content:string
  
  **Project**
      title:string
      description:text
      link:string
  
  **User**

## Think through the pages I need in my app

  - Home
  - Posts#index
  - Posts#show
  - Projects#index
  - Projects#show
  - Contact
  