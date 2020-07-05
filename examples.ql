# Type queries into this side of the screen, and you will 
# see intelligent typeaheads aware of the current GraphQL type schema, 
# live syntax, and validation errors highlighted within the text.

# We'll get you started with a simple query showing your username!
# {
#   viewer{
#     login,
#     name,
#     bio,
#     company
#   }
# }

# {
#   repositoryOwner(login:"tannishk"){
#     id,
#     __typename,
#     avatarUrl,
#     login
#   }
# }

# {
#   repository(owner:"tannishkPr",name:"leet-code") {
#     id
#     createdAt
#     name
#   }
# }
# {
#   rateLimit(dryRun:true){
#     cost
#   }
# }


# type Name{
#   id:String,
#   enterprise:Enterprise
# }

# type Character {
#   name: String!
#   appearsIn: [String!]!
# }

# {
#   __schema{
#     queryType{
#       name
#       description
#       fields{
#         name
#         description
#       }
#     }
#   }
# }

# {
#   __type(name:"CodeOfConduct"){
#     name
#     kind
#     description
#     fields{
#       name
#       isDeprecated
#       description
#     }
#   }
# }

##Create Alias to fetch multiple alias with the same name 
# {
#   LeetCodeRepo:repository(name:"leet-code",owner:"tannishkPr"){
#     name
#     description
#     createdAt
#   }
#   InterviewBitRepo : repository(name:"interviewBit",owner:"tannishkPr"){
#     name
#     description
#   }
# }

##Fragments are usable set of fields

# fragment repoFields on Repository{
#   name
#     description
#     createdAt
# }

# Connection is a curser . Edges and a node :Type 
# {
#   viewer{
#     id
#     followers(first:5) {
#       edges {
#         node {
#           id
#           email
#           company
#         }
#       }
#     }
#   }
# }

##Complicated Queries 
# {
#   viewer{
#     id
#     followers(first:5) {
#       edges {
#         node {
#           id
#           email
#           company
#           pullRequests(first:10){
#             edges{
#               node{
#                 id
#                 author{
#                   login
#                 }
#                 closed
#               }
#             }
#           }
#         }
#       }
#     }
#     isEmployee
#   }
# }


# {
#   repository(name: "graphql", owner: "facebook") {
#     id
#     issues (first:5,states:[OPEN,CLOSED]) {
#       edges {
#         node {
#           id
#           number
#           title
#         }
#       }
#     }
#   }
# }

## What we did earlier was known as anoynomous queries named queries 
# query ABCD{
#   organization(login:"aws") {
#     id
#     description
#     email
#     repositories(first:100) {
#       edges {
#         node {
#           id
#           name
#         }
#       }
#     }
#   }
# }

##pass variables
# query organisationsWithHundredRepos($login:String!){
#   organization(login:$login) {
#     id
#     description
#     email
#     repositories(first:100) {
#       edges {
#         node {
#           id
#           name
#         }
#       }
#     }
#   }
# }

##Pass Multiple variables 
# query organisationsWithHundredRepos($login:String!,$first:Int!){
#   organization(login:$login) {
#     id
#     description
#     email
#     repositories(first:$first) {
#       edges {
#         node {
#           id
#           name
#         }
#       }
#     }
#   }
# }

## Mutations help us to create , edit or delete data 
# {
#   repositoryOwner(login:"tannishkPr"){
#     repository(name:"graph-ql-testing"){
#       id
#       issues(first:3) {
#         edges {
#           node {
#             id
#             title
#             body
#           }
#         }
#       }
#     }
#   }
# }

# mutation NewMutation($input:AddCommentInput!){
#   addComment(input:$input){
#     clientMutationId
#     subject{
#       id
#     }
#   }
# }

# mutation AddReaction($input:AddReactionInput!){
#   addReaction(input:$input){
#     clientMutationId
#     subject{
#       id
#     }
#   }
# }
