select tema.nombre as Tema, temporal.url as URL,opinion.numero as Opiniones
from tema,contenidoTema,Temporal,Opinion
where tema.nombre =contenidoTema.tema and  contenidoTema.contenido = temporal.nombre and temporal.nombre = opinion.contenidoid
and detalle = 'momentos de error';  

SELECT PERFIL.NOMBRE AS PERFIL, TEMPORAL.NOMBRE ,TEMPORAL.URL, COUNT(CONTENIDO) AS VECES
FROM  CONSULTA,TEMPORAL,PERFIL
WHERE CONSULTA.PERFIL =  PERFIL.CORREO AND CONSULTA.CONTENIDO = TEMPORAL.NOMBRE
GROUP BY TEMPORAL.NOMBRE
ORDER BY COUNT(CONTENIDO);
