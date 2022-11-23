https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
module MonadRandom where

import Control.Applicative (liftA2)

import Data.Ratio((%))

import MonadRandomDef

instance Functor DecisionTree where
    -- If you are confident in your Monad instance, you may use:
    -- fmap f t = t >>= \x -> return (f x)
    fmap f t = t >>= \x -> return (f x)

instance Applicative DecisionTree where
    -- If you are confident in your Monad instance, you may use:
    -- liftA2 op t1 t2 = t1 >>= \x1 -> t2 >>= \x2 -> return (op x1 x2)
    liftA2 op t1 t2 = t1 >>= \x1 -> t2 >>= \x2 -> return (op x1 x2)

instance Monad DecisionTree where

instance MonadRandom DecisionTree where

expectedValue :: Fractional q => (t -> q) -> DecisionTree t -> q
expectedValue error "TODO"

probability :: Fractional q => (t -> Bool) -> DecisionTree t -> q
probability pred t = expectedValue bernoulli t
  where
    bernoulli a | pred a = 1
                | otherwise = 0

uniform :: MonadRandom m => [a] -> m a
uniform = error "TODO"

hangman :: MonadRandom m => String -> Int -> String -> m WinLose
hangman = error "TODO"
