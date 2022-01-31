toPart recipient = "Dear " ++ recipient ++ ",\n"
bodyPart bookTitle = "Thanks for buying " ++ bookTitle ++ "\n"
fromPart author = "Thanks,\n" ++ author

createEmail recipient bookTitle author =
  toPart recipient ++
  bodyPart bookTitle ++
  fromPart author
