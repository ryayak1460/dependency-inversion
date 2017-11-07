{-
 - Copyright 2017 Ryan Y.
 -
 - Licensed under the Apache License, Version 2.0 (the "License");
 - you may not use this file except in compliance with the License.
 - You may obtain a copy of the License at
 -
 -     http://www.apache.org/licenses/LICENSE-2.0
 -
 - Unless required by applicable law or agreed to in writing, software
 - distributed under the License is distributed on an "AS IS" BASIS,
 - WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 - See the License for the specific language governing permissions and
 - limitations under the License.
 -}
module DependencyInversion.Core where
  class I i where
    process :: i -> Data -> i

  data Data = Data { x :: Int }

  data I i => A i = A { aExternal :: i }

  addTwo :: I i => A i -> Int -> A i
  addTwo a x = A . process (aExternal a) $ Data { x = x + 2 }
