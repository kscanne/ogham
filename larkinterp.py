from lark import Lark

my_grammar = """
start: command+

?command: primitive | loop

primitive: "ᚆ" -> inc1
            | "ᚇ" -> inc2
            | "ᚈ" -> inc3
            | "ᚉ" -> inc4
            | "ᚊ" -> inc5
            | "ᚁ" -> dec1
            | "ᚂ" -> dec2
            | "ᚃ" -> dec3
            | "ᚄ" -> dec4
            | "ᚅ" -> dec5
            | "ᚕ" -> halt

loop: "᚛" command+ "᚜ᚋ" -> loop1
        | "᚛" command+ "᚜ᚌ" -> loop2
        | "᚛" command+ "᚜ᚍ" -> loop3
        | "᚛" command+ "᚜ᚎ" -> loop4
        | "᚛" command+ "᚜ᚏ" -> loop5

%ignore /[^ᚁᚂᚃᚄᚅᚆᚇᚈᚉᚊᚋᚌᚍᚎᚏᚕ᚛᚜]/
"""

# returns a boolean "halted?"
def execute(t, env):
  if t.data == 'start':
    for child in t.children:
      if execute(child,env):
        return True
  elif t.data == 'halt':
    return True
  elif t.data[0:3] == 'inc':
    env[int(t.data[3])-1] += 1
  elif t.data[0:3] == 'dec':
    env[int(t.data[3])-1] -= 1
  elif t.data[0:4] == 'loop':
    while env[int(t.data[4])-1]!=0:
      for child in t.children:
        if execute(child,env):
          return True
  else:
    raise SyntaxError("bad tree")
  return False

parser = Lark(my_grammar)
program = "ᚇᚇᚇᚇᚇᚇᚇ᚛ᚆᚂ᚜ᚌ᚛ᚇᚈᚁ᚜ᚋᚃ᚛᚛ᚉᚊᚃ᚜ᚍ᚛᚛ᚈᚄ᚜ᚎᚂ᚛ᚆᚉᚅ᚜ᚏ᚛ᚊᚁ᚜ᚋ᚜ᚌ᚛ᚃᚇ᚜ᚍ᚛ᚄᚅᚈ᚜ᚏᚃ᚜ᚍᚕ"
parse_tree = parser.parse(program)
mem = [0]*5
execute(parse_tree, mem)
print(' '.join([str(x) for x in mem]))
