potential_duplicates <- function(data_f, first, last, record_id){
  dups <- data_f |>
    group_by(data_f[first], data_f[last]) |>
    mutate(duplicate = n()) |>
    filter(duplicate > 1) |>
    select(-duplicate)

  return(dups)
}
