if variable? do
  Call.this()
else
  Call.that()
end


#Sintaxis opcional
if variable?, do: Call.this(), else: Call.that()
if variable?, [do: Call.this(), else: Call.that()]
if variable?, [{:do, Call.this()}, {:else, Call.that()}]
if(variable?, [{:do, Call.this()}, {:else, Call.that()}])
