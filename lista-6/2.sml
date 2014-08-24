fun less (_, nil) = nil
  | less (e, l) = if (e > hd l)
    then hd l :: less (e, tl l)
    else less (e, tl l)