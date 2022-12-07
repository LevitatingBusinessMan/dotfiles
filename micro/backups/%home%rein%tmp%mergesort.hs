merge :: Ord a => [a] -> [a]

merge [] = []

merge lst
	| length lst <= 1 = lst
	| otherwise =
		let left = []
		let right = []
