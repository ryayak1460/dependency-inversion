module DependencyInversion.Core where
  class I i where
    process :: i -> Data -> i

  data Data = Data { x :: Int }

  data I i => A i = A { aExternal :: i }

  addTwo :: I i => A i -> Int -> A i
  addTwo a x = A . process (aExternal a) $ Data { x = x + 2 }
