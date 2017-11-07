module DependencyInversion.Helpers where
  import DependencyInversion.Core(I(..), Data)

  data IImpl = IImpl { iData :: Maybe Data }

  instance I IImpl where
    process this datum = IImpl { iData = Just datum }
