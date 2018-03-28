esMultiplo :: Integer -> Integer -> Bool
esMultiplo  nro otroNum = (nro `mod` otroNum) == 0




and' :: Bool ->  Bool -> Bool
and' exp otraExp | exp = otraExp
                  | otherwise = False

or' :: Bool -> Bool -> Bool
or' exp otraExp | exp = True
                 | otherwise = otraExp



and'' :: Bool -> Bool -> Bool
and'' True True = True
and'' _ _ = False

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

data Persona = Gimnasta { nombre :: String, fuerza :: Integer, energia :: Integer} deriving Show

juan = Gimnasta "juan" 10 15

ana = Gimnasta "ana" 30 5

rolAdelante :: Persona -> Persona
rolAdelante unaPersona = unaPersona { fuerza = fuerza unaPersona + 1}

vertical :: Persona -> Persona
vertical unaPersona = unaPersona {fuerza = fuerza unaPersona + 10, 
                                   energia = energia unaPersona + 5}

cambiarNombre :: Persona -> Persona
cambiarNombre (Gimnasta nombre fuerza  energia) = Gimnasta (nombre ++ " lopez") fuerza energia

cambiarEnergia :: Persona -> Persona
cambiarEnergia gimn = Gimnasta (nombre gimn) (fuerza gimn) (energia gimn + 4)


--data Animal = Perro {nombre :: String}










           



