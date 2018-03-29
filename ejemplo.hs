esMultiplo :: Integer -> Integer -> Bool
esMultiplo  nro otroNum = (nro `mod` otroNum) == 0

--Definción del (&&) usando guardas
and' :: Bool ->  Bool -> Bool
and' exp otraExp | exp = otraExp
                  | otherwise = False

--Definción del (||) usando guardas
or' :: Bool -> Bool -> Bool
or' exp otraExp | exp = True
                | otherwise = otraExp


--Definción del (&&) usando Pattern Matching
and'' :: Bool -> Bool -> Bool
and'' True True = True
and'' _ _ = False

--Definción del (||) usando Pattern Matching
or'' :: Bool -> Bool -> Bool
or'' False False = False
or'' _ _ = True

signo :: Integer -> Integer
signo 0 = 0 
signo nro | nro < 0 = -1
          | otherwise = 1

doble :: Integer -> Integer
doble nro = nro * 2

cuadruple :: Integer -> Integer
cuadruple nro = (doble.doble) nro

--Definición de un tipo propio Persona
data Persona = Gimnasta { nombre :: String, fuerza :: Integer, energia :: Integer} deriving Show

juan = Gimnasta "juan" 10 15

ana = Gimnasta "ana" 30 5

rolAdelante :: Persona -> Persona
rolAdelante unaPersona = unaPersona { fuerza = fuerza unaPersona + 1}

vertical :: Persona -> Persona
vertical unaPersona = unaPersona {fuerza = fuerza unaPersona + 10, 
                                   energia = energia unaPersona + 5}

--Aprovechando Pattern Matching
cambiarNombre :: Persona -> Persona
cambiarNombre (Gimnasta nombre fuerza  energia) = Gimnasta (nombre ++ " lopez") fuerza energia

cambiarEnergia :: Persona -> Persona
cambiarEnergia gimn = Gimnasta (nombre gimn) (fuerza gimn) (energia gimn + 4)













           



