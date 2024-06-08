-- Copyright (c) 2016-present, Facebook, Inc.
-- All rights reserved.
--
-- This source code is licensed under the BSD-style license found in the
-- LICENSE file in the root directory of this source tree.

{-# LANGUAGE GADTs #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}

module Duckling.AmountOfMoney.HU.Rules
  ( rules
  ) where

import Data.HashMap.Strict (HashMap)
import Data.String
import Data.Text (Text)
import Prelude

import Duckling.AmountOfMoney.Helpers
import Duckling.AmountOfMoney.Types (Currency(..))
import Duckling.Numeral.Helpers (isPositive)
import Duckling.Regex.Types
import Duckling.Types

import qualified Data.HashMap.Strict as HashMap
import qualified Data.Text as Text
import qualified Duckling.AmountOfMoney.Helpers as Helpers
import qualified Duckling.Numeral.Types as TNumeral

ruleEgyForint :: Rule
ruleEgyForint = Rule
  { name = "egy ezer"
  , pattern =
    [ regex "egy ezer"
    ]
  , prod = \_ -> Just . Token AmountOfMoney . withValue 1000 $ currencyOnly HUF
  }

ruleForint :: Rule
ruleForint = Rule
  { name = "<amount> ezer"
  , pattern =
    [ Predicate isPositive
    , regex "ezer"
    ]
  , prod = \case
      (Token Numeral TNumeral.NumeralData{TNumeral.value = v}:_)
        -> Just . Token AmountOfMoney . withValue (1000 * v) $ currencyOnly HUF
      _ -> Nothing
  }

rules :: [Rule]
rules =
  [ ruleEgyForint
  , ruleForint
  ]
