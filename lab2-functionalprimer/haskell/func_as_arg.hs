--create inpFunc
inpFunc a b = [a..b] 

--Define applicatorFunc
-- applicatorFunc inpFunc s = if s=='s' then sum inpFunc else (sum inpFunc)/5  
applicatorFunc inpFunc a b s  | s=='s'= sum (inpfunc a b)
                              | otherwise = (sum(inpFunc a b))/b
                   
main = do
    let result = applicatorFunc inpFunc 1 20 'a' --Call applicatorFunc with inpFunc and 'a' as args
    putStrLn("sum = " ++ show(result))