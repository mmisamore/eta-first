module Counter where

import Java

data Counter = Counter @eta.example.Counter
  deriving Class

foreign import java unsafe "@new" 
  newCounter :: Java a Counter
foreign import java unsafe "@new" 
  newCounterWith :: Int -> Java a Counter

foreign import java unsafe increment :: Java Counter ()
foreign import java unsafe get :: Java Counter Int
foreign import java unsafe set :: Int -> Java Counter ()

foreign import java unsafe "@static @field eta.example.Counter.COUNTER_MAX"
  cOUNTER_MAX :: Java Counter Int

foreign import java unsafe "@field publicCounter" 
  getPublicCounter :: Java Counter Int
foreign import java unsafe "@field publicCounter" 
  setPublicCounter :: Int -> Java Counter ()

foreign import java unsafe "@static @field eta.example.Counter.numCounters" 
  getNumCounters :: Java Counter Int

foreign import java unsafe "@static @field eta.example.Counter.numCounters" 
  -- Replace "Counter" with "a" below to trigger the compiler error
  setNumCounters :: Int -> Java Counter ()

