module DependencyInversion.CoreSpec where
  import Test.Hspec
  import Data.Maybe(fromJust)
  import DependencyInversion.Core
  import DependencyInversion.Helpers(IImpl(..))

  spec :: Spec
  spec = do
    describe "A" $ do
      describe "addTwo" $ do
        it "passes data to external interface" $ do
          (x . fromJust . iData . aExternal . (\a -> addTwo a 2) $ A $ IImpl {
            iData = Nothing }) `shouldBe` 4
