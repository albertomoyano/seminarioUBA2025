if mode=="draft" then
  Make:htlatex {}
elseif mode=="mini" then
  Make:xindy {idxfile = "names.idx"}
else
  Make:htlatex {}
  Make:biber {}
  Make:htlatex {}
  Make:xindy {}
  Make:xindy {idxfile = "names.idx"}
  Make:xindy {idxfile = "concepto.idx"}
  Make:xindy {idxfile = "onomastico.idx"}
  Make:htlatex {}
  Make:htlatex {}
end
