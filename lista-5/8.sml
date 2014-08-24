fun sort3 (a:real, b:real, c:real) =
  if a < b andalso b < c then a::b::c::nil else
  if a < b andalso c < b then a::c::b::nil else
  if b < a andalso a < c then b::a::c::nil else
  if b < a andalso c < a then b::c::a::nil else
  if c < a andalso a < b then c::a::b::nil else
  if c < a andalso b < a then c::b::a::nil else
  a::b::c::nil