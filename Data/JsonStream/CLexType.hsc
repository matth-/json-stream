{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Data.JsonStream.CLexType where

import Foreign.C.Types
import Foreign

newtype LexResultType = LexResultType CInt deriving (Show, Eq, Storable)

#include "lexer.h"

#{enum LexResultType, LexResultType
  , resNumber = RES_NUMBER
  , resString = RES_STRING
  , resTrue = RES_TRUE
  , resFalse = RES_FALSE
  , resNull = RES_NULL

  , resOpenBrace = RES_OPEN_BRACE
  , resCloseBrace = RES_CLOSE_BRACE
  , resOpenBracket = RES_OPEN_BRACKET
  , resCloseBracket = RES_CLOSE_BRACKET

  , resStringPartial = RES_STRING_PARTIAL
  , resNumberPartial = RES_NUMBER_PARTIAL
  , resNumberSmall = RES_NUMBER_SMALL
  }
