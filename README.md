#Clase para pruebas de oposición del DF - UBA
Esto está bastante verde todavía, pero se puede usar.
Setea los márgenes de una forma bastante agresiva,
pero permite agregar encabezados y pone el interlineado
en 1.5 (la forma usual de las pruebas de oposición en el
departamento de física).

Las figuras van en la carpeta `fig/`, y tiene que tener
el formato que quieran usar.

Pueden usarlo de forma portable (llevando oposicion.cls a
la carpeta en la que tengan el archivo de latex con su prueba)
o instalarlo (para Linux) con

```
make install
```

Para windows o mac, averigüen.

Para ver cómo queda compilado el ejemplo pueden hacer

```
make test
```

También está la figura en formato pdf, para que prueben compilando


```
latexpdf oposicion.tex
```

El caso ejemplo se compila como `oposicion.ps` primero y luego se convierte
a `oposicion.pdf`. Su prueba la pueden compilar como quieran una vez que esté
instalado `oposicion.cls` o si está en la misma carpeta que el archivo
de latex.
