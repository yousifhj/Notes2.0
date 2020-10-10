<!-- Notes Application 

Notebook 
    - belongs_to :user
    - has_many :comments
    - has many :users, through :comments
    - belongs_to :category
    - title
    - content

User
    - has_many: notebooks
    - has_many :comments
    - has_many :commented_notebooks, through :comments
    - has_many :categories, though :notebooks
    - email 
    - password

Comments
    - belongs_to :user 
    - belongs_to :notebook 
    - content

Categories
    - name
    - has-many :notebooks
    - has_many :users, though :notebooks -->