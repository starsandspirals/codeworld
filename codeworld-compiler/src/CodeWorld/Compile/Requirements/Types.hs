{-
  Copyright 2018 The CodeWorld Authors. All rights reserved.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
-}

module CodeWorld.Compile.Requirements.Types (
    Requirement(..),
    Rule(..)
    ) where

data Requirement = Requirement {
    requiredDescription :: String,
    requiredRules :: [Rule]
    }
    deriving (Show)

data Rule = DefinedByFunction String String
          | MatchesExpected String Int
          | HasSimpleParams String
          | UsesAllParams String
          | NotDefined String
    deriving (Show)
