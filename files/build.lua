Make:add("biber","biber ${input}")
Make:add("xindy", function(par)
-- par.encoding  = par.encoding or "utf8"
-- par.language = par.language or "english"
par.idxfile = par.idxfile or par.input .. ".idx"
local modules = par.modules or {}
local t = {}
for k,v in ipairs(modules) do
t[#t+1] = "-M ".. v
end
par.moduleopt = table.concat(t, " ")
local xindy_call = "xindy -L ${language} -C ${encoding} ${moduleopt} ${idxfile}" % par
print(xindy_call)
return os.execute("xindy -L ${language} -C ${encoding} ${moduleopt} ${idxfile}" % par)
end, {modules = {"texindy"}, language = "english", encoding = "utf8"})

if mode=="draft" then
  Make:htlatex {} 
elseif mode=="mini" then
  Make:xindy {idxfile = "names.idx"} 
else
  Make:htlatex {}
  Make:biber {}
  Make:htlatex {}
  Make:xindy {} 
  Make:xindy {idxfile = "foo.idx"} 
  Make:xindy {idxfile = "foo3.idx"} 
  Make:xindy {idxfile = "names.idx"} 
  Make:htlatex {}
  Make:htlatex {}
  Make:htlatex {}
end
