select staff_id, Count(amount), Sum(amount)
From payment
Group By staff_id;


