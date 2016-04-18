# Website IV Devs#

* Current version: 0.0.1

## Comenzando ##

### Pre Requisitos ###

Antes de comenzar necesitas tener instalado en tu equipo los siguientes componentes.

* Ruby v2.2.*
* Ruby on Rails v4.2.* (http://installrails.com/)
* CVS Git (https://git-scm.com/)

### Instalación ###

    git clone https://github.com/iv-devs/ivDevs-Web-Oficial.git && cd ivDevs-Web-Oficial
    bundle install
    rake db:migrate

### Configuración ###

No se necesita ninguna configuración adicional. La instalación debe hacerse cargo de todas las dependencias necesarias para ejecutar el sitio.

### Ejecución del proyecto en localhost ###

    rails server

Abrir el navegador y visitar http://localhost:3000

### Dependencias ###

De momento todas las dependencias necesarias son instaladas gracias al [*Gemfile*](./Gemfile), para agregar cualquier dependencia hacerlo en dicho archivo, ubicado en la raíz del proyecto

### Tests ###

No hay tests disponibles por el momento.

## Contribuciones ##

###Resumen###

Si encuentras un bug o quieres desarrollar alguna caracteristica, o simplemente proponer algún cambio eres libre de hacerlo.
Si solo quieres reportar o aportar con la idea o información puedes abrir una issue para que la analizemos y alguien pueda tomarla para su desarrollo.
Si lo que quieres es aportar con código, utilizaremos el workflow propuesto por gitflow para el desarrollo.

###gitflow?###
![Referencia gitflow completo](https://www.atlassian.com/pt/git/workflows/pageSections/00/contentFullWidth/0/tabs/02/pageSections/010/contentFullWidth/0/content_files/file0/document/git-workflow-release-cycle-4maintenance.png)
*Fuente : https://www.atlassian.com/pt/git/workflows#!workflow-gitflow*

En palabras simples, esto quiere decir que todo desarrollo nuevo debe salir desde la rama **develop**, y el nombre de la rama debe contener el prefijo `feature/`, por ejemplo:

    feature/nombre-de-la-rama

Cuando lo que se este corrigiendo sea un error en producción, la rama de desarrollo debe ser creada a partir de **master** con el prefijo `hotfix/`, por ejemplo:

    hotfix/nombre-de-la-rama


###Commits y Pull Request###

Trata de utilizar mensajes cortos y claros en la primera linea del commit, si utilizas más lineas, usa el mensaje corto y claro en la primera y en la segúnda inicia con los verbos en ingles de la acción realizada, por ejemplo

    Nuevo login habilitado
    ADD login.js, MODIFY template login.html, UPDATE users table

Esto nos ayudará a una revisión más rápida del pull request, los pull request serán revisados por el staff de administradores antes del merge.

###Convenciones de código###

De momento no tenemos convenciones propias para el desarrollo del proyecto, solo basta con ver el proyecto y seguir al resto :).
Por otro lado te recomendamos seguir esta [guía de estilos](https://github.com/alemohamad/ruby-style-guide/blob/master/README-esLA.md) de ruby para manejar las mejores practicas.


## Links Útiles ##

* [Recursos Gráficos](https://github.com/iv-devs/graphic-resources)
* [IV Devs Website](http://www.ivdevs.com)
* [Twitter](http://twitter.com/iv_devs)
* [Facebook](https://www.facebook.com/groups/programadores.iv.region.chile/)
* [Github](https://github.com/iv-devs/)

## Licencia ##
MIT
