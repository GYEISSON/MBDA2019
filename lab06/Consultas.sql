select contenidoTema.tema as Tema, temporal.url as URL,count(opiniones.numero) as Opiniones
from contenidoTema,Temporal,Opinion
where contenidoTema.contenido = temporal.nombre and temporal.nombre = opinion.contenido
and detalle = 'momentos de error'
Group by opiniones.numero;