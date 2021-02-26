from string import Template
t = Template("One for $name, one for me.")

def two_fer(name = 'you'):
    return(t.substitute(name=name))
