library(rio)
simpsons <- import("s3-simpsons.Rdata")

View(simpsons)

str(simpsons[[1]])

print(simpsons[[1]]$title)



for (i in 1:536) {
  cat(simpsons[[i]]$title, "\n")
}

#we have to repeat the same action on many df's, so we use iterative functions (loops).
#cat prints the outcome in sequence
#"\n" puts each outcome in a line


for (i in seq_along(simpsons)) {
  cat(simpsons[[i]]$title, "\n")
}

#seq_along doesn't require I know the n, it goes on til the end on its own.
#WHY IF I DO THE SAME LOOP TWO TIMES IT ONLY GIVES LAST DF?
#WHY CAN'T I USE PRINT INSTEAD OF CAT?



