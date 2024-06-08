-- Copyright (c) 2016-present, Facebook, Inc.
-- All rights reserved.
--
-- This source code is licensed under the BSD-style license found in the
-- LICENSE file in the root directory of this source tree.


{-# LANGUAGE OverloadedStrings #-}

module Duckling.AmountOfMoney.HU.Corpus
  ( corpus
  ) where

import Data.String
import Prelude

import Duckling.AmountOfMoney.Types
import Duckling.Locale
import Duckling.Resolve
import Duckling.Testing.Types

corpus :: Corpus
corpus = (testContext {locale = makeLocale HU Nothing}, testOptions, allExamples)

allExamples :: [Example]
allExamples = concat
  [ examples (simple HUF 0.1)
             [ "0.1 forint"
             , "nulla egész egy forint"
             , "nulla egész tized forint"
             , "nulla egész egy tized forint"
             ]
  , examples (simple HUF 0.25)
             [ "0.25 forint"
             , "nulla egész huszonöt forint"
             , "nulla egész negyed száz forint"
             , "nulla egész két és fél tized forint"
             , "nulla egész huszonöt század forint"
             ]
  , examples (simple HUF 0.251)
             [ "0.251 forint"
             , "nulla egész kétszáz ötven egy ezred forint"
             , "nulla egész kettőszáz ötven egy ezred forint"
             ]
  , examples (simple HUF 1)
             [ "egy forint"
             , "1 forint"
             ]
  , examples (simple HUF 2)
             [ "2 forint"
             , "két forint"
             ]
  , examples (simple HUF 3)
             [ "3 forint"
             , "három forint"
             ]
  , examples (simple HUF 4)
             [ "4 forint"
             , "négy forint"
             ]
  , examples (simple HUF 5)
             [ "5 forint"
             , "öt forint"
             ]
  , examples (simple HUF 6)
             [ "6 forint"
             , "hat forint"
             ]
  , examples (simple HUF 7)
             [ "7 forint"
             , "hét forint"
             ]
  , examples (simple HUF 8)
             [ "8 forint"
             , "nyolc forint"
             ]
  , examples (simple HUF 9)
             [ "9 forint"
             , "kilenc forint"
             ]
  , examples (simple HUF 10)
             [ "10 forint"
             , "tíz forint"
             ]
  , examples (simple HUF 11)
             [ "11 forint"
             , "tizenegy forint"
             ]
  , examples (simple HUF 12)
             [ "12 forint"
             , "tizenkét forint"
             ]
  , examples (simple HUF 13)
             [ "13 forint"
             , "tizenhárom forint"
             ]
  , examples (simple HUF 14)
             [ "14 forint"
             , "tizennégy forint"
             ]
  , examples (simple HUF 15)
             [ "15 forint"
             , "tizenöt forint"
             ]
  , examples (simple HUF 16)
             [ "16 forint"
             , "tizenhat forint"
             ]
  , examples (simple HUF 17)
             [ "17 forint"
             , "tizenhét forint"
             ]
  , examples (simple HUF 18)
             [ "18 forint"
             , "tizennyolc forint"
             ]
  , examples (simple HUF 19)
             [ "19 forint"
             , "tizenkilenc forint"
             ]
  , examples (simple HUF 20)
             [ "20 forint"
             , "húsz forint"
             ]
  , examples (simple HUF 21)
             [ "21 forint"
             , "huszonegy forint"
             ]
  , examples (simple HUF 25)
             [ "25 forint"
             , "huszonöt forint"
             , "negyed száz forint"
             ]
  , examples (simple HUF 30)
             [ "30 forint"
             , "harminc forint"
             ]
  , examples (simple HUF 50)
             [ "50 forint"
             , "ötven forint"
             , "fél száz forint"
             ]
  , examples (simple HUF 100)
             [ "100 forint"
             , "száz forint"
             ]
  , examples (simple HUF 200)
             [ "200 forint"
             , "2 száz forint"
             , "kétszáz forint"
             ]
  , examples (simple HUF 500)
             [ "500 forint"
             , "5 száz forint"
             , "ötszáz forint"
             , "fél ezer forint"
             ]
  , examples (simple HUF 1000)
             [ "1000 forint"
             , "ezer forint"
             ]
  , examples (simple HUF 1001)
             [ "1001 forint"
             , "ezer egy forint"
             ]
  , examples (simple HUF 2001)
             [ "2001 forint"
             , "2 ezer egy forint"
             , "2 ezer 1 forint"
             , "kétezer egy forint"
             ]
  , examples (simple HUF 10000)
             [ "10000 forint"
             , "10 ezer forint"
             , "tíz ezer forint"
             ]
  , examples (simple HUF 10001)
             [ "10001 forint"
             , "10 ezer egy forint"
             , "10 ezer 1 forint"
             , "tíz ezer egy forint"
             ]
  , examples (simple HUF 100000)
             [ "100000 forint"
             , "száz ezer forint"
             ]
  , examples (simple HUF 100001)
             [ "100001 forint"
             , "száz ezer egy forint"
             ]
  , examples (simple HUF 250000)
             [ "250000 forint"
             , "250 ezer forint"
             , "kettő száz ötven ezer forint"
             , "két száz ötven ezer forint"
             , "két és fél száz ezer forint"
             , "negyed millió forint"
             ]
  , examples (simple HUF 251000)
             [ "251000 forint"
             , "251 ezer forint"
             , "kettő száz ötven egy ezer forint"
             , "két száz ötven egy ezer forint"
             ]
  , examples (simple HUF 251001)
             [ "251001 forint"
             , "251 ezer egy forint"
             , "251 ezer 1 forint"
             , "kettő száz ötven egy ezer egy forint"
             , "két száz ötven egy ezer egy forint"
             ]
  , examples (simple HUF 500000)
             [ "500000 forint"
             , "500 ezer forint"
             , "öt száz ezer forint"
             , "fél millió forint"
             ]
  , examples (simple HUF 750000)
             [ "750000 forint"
             , "750 ezer forint"
             , "hét száz ezer forint"
             , "három negyed millió forint"
             ]
  , examples (simple HUF 1000000)
             [ "1000000 forint"
             , "1 millió forint"
             , "egy millió forint"
             ]
  , examples (simple HUF 10000000)
             [ "10000000 forint"
             , "10 millió forint"
             , "tíz millió forint"
             ]
  , examples (simple HUF 100000000)
             [ "100000000 forint"
             , "100 millió forint"
             , "száz millió forint"
             ]
  , examples (simple HUF 250000000)
             [ "250000000 forint"
             , "250 millió forint"
             , "kettő száz ötven millió forint"
             , "két száz ötven millió forint"
             , "negyed milliárd forint"
             ]
  ]
