import re
#
#	make sure greedy is working with the first set
# long_string = 'GtkAction:::*(* get_action):(GtkActionGroup *action_group, const gchar * action_name)'
long_string = 'GtkAction *(* get_action) (GtkActionGroup *action_group, const gchar * action_name)'

# split on pattern, being greedy on whitespace ( or alternative delimiter)
# my_pattern = r'[:]+'
#	we want to spread this out for analysis
#	after the suggestion at: 
#	https://docs.python.org/2/howto/regex.html#greedy-versus-non-greedy

#
# my_pattern = re.compile(r"""
# [:]+
# """, re.VERBOSE)

#
# my_pattern = re.compile(r"""
# [\s]+
#""", re.VERBOSE)

#	
my_pattern = re.compile(r"""
(.+\s+\*?)
(\(\*.+)
""", re.VERBOSE)

my_array = re.split(my_pattern, long_string)

for i in my_array:
  print " token> "+i

print "==========="
