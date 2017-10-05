# Regular Expressions - generic set of programming codes used to pull chunks 
# of text from text fields.
# Example: (    pattern="accountant") or 
# (    patter ="A") --- everything with the letter A
#     "[Aa]" --- gives you everything with A or a, one or the other, in no order
#     "[a-z] --- gives you everything in those ranges
# pattern = "[[:alpha:]]" is the same as = "[a-z]"
# blank spaces do count as positions, hence, patter = "[:blank:]"
# regexpr() is designed to return the first match
# gregexpr() is designed to return all the matches
# use {n} to match 'n' times. Example: my_pattern = "\\s[[:lower:]]{2}\\s"
# meaning match a lowercase letter twice in a row
# df = read.csv("./data/california-state-university-2015.csv")
# df$Employee.Name = as.character(df$Employee.Name)
# df$Employee.Name[grepl(pattern = "", df$Employee.Name)]
df = read.csv("./data/california-state-university-2015.csv")
