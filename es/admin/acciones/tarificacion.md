---
title: Tarificación
lang: es
ref: tarificacion
parent: Logística
grand_parent: Guía de administración
nav_order: 2
---

# Pricing

Durante el proceso de creación de una tienda, es posible crear precios (por ejemplo, precios express, precios normales) desde la sección de administración haciendo clic en el ícono y luego en la sección de Precios.

[screenshot]

La tarificación se configura en el panel de administración mediante un conjunto de reglas basadas en las siguientes variables:

La distancia, que se mide en metros. Esta distancia se puede definir con los operadores de:

- &gt; mayor que * valor en metros *
- &lt; menor que * valor en metros *

entre dos variables.

El peso, que se evalúa en gramos. Este peso se puede definir con los mismos operadores que la distancia.

La zona definida al cargar un archivo GeoJSON en la configuración de la instancia;

El tipo de bicicleta que se define seleccionándola de una lista en la que están disponibles:

La bicicleta simple
La bicicleta de carga

[screenshot]

Estas reglas están organizadas como una pila en orden de procesamiento, el precio en la parte superior de la lista será el primero en ser procesado por el software que verificará si coincide con las características de la entrega, si no coincide, se evaluará el segundo precio de la lista, y así sucesivamente. Con cada entrega creada, esta pila se utilizará para crear el precio. La elección se realiza automáticamente según los criterios especificados para cada entrega.

Por ejemplo, creo una regla que especifica un precio:
- En el barrio de Chacarita con bicicleta de carga, colocada en la parte superior de la pila;
- En el barrio de Belgrano con bicicleta de carga, colocada en el medio del montón;
- En el barrio de Belgrano, colocado en la parte inferior de la pila.

Si se crea una entrega que implica una serie de tareas en el barrio de Belgrano con una sola bicicleta, se ignorará la primera regla y se utilizará la segunda como base de entrega. Las reglas precisas (es decir, con la mayoría de las variables) deben estar en la parte superior de la pila y las más generales en la parte inferior para que el software seleccione los casos especiales como base para la fijación de precios. Si, por ejemplo, elevo mi lista de precios de la siguiente manera:
en barrio de Belgrano;
en barrio de Belgrano con bicicleta de carga;
en el barrio de Chacarita con bicicleta de carga.

Si se crea una entrega hacia el barrio de Belgrano con una bicicleta de carga, se ignorará la primera regla. La segunda corresponde a la entrega, por lo que se aplicará su precio. Cumplida la segunda regla, se ignora la tercera.

Las reglas más precisas (es decir, con la mayoría de los parámetros) deben estar en la parte superior de la pila y las reglas más generales en la parte inferior de la pila, de modo que el software seleccione los casos específicos como base para la fijación de precios. Si, por ejemplo, modifico el precio anterior de la siguiente manera:

en barrio de Belgrano;
en barrio de Belgrano con bicicleta de carga;
en barrio de Chacarita con bicicleta de carga.
Si se crea una entrega en el barrio de Belgrano con la necesidad de entregar en bicicleta de carga, se aplicará el precio especificado para la primera regla porque no se especifica ningún tipo de bicicleta y la segunda será ignorada.
