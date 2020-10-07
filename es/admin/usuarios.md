---
title: Usuarios
lang: es
ref: admin-usuarios
parent: Admin's guide
nav_order: 5
---

# Administración de usuarios/as

El listado de usuarios/as está disponible en la página `Usuarios`. En esta lista se visualiza la totalidad de usuarios/as de la plataforma y su información. Desde aquí también se permite la creación de nuevos/as usuarios/as.

## Perfil de usuario

Una cuenta de usuario está asociada a la siguiente información:

- Nombre de usuario
- Nombre
- Apellido
- Teléfono
- Contraseña
- Correo Electrónico

Es posible activar o desactivar usuarios.Un usuario desactivado no podrá volver a utilizar la plataforma.

## Roles

Cada usuario/a puede tener uno o más roles. Cada rol brinda acceso a una funcionalidad de la Plataforma.

| Rol                                      | Cliente/a | Mensajero/a | Restaurante | Tienda | Admin |
| -------------------------------           |:------:|:---------:|:----------:| :----------:| :----------:|
| Editar información personal | ✔      | ✔         | ✔          | ✔           | ✔           |
| Crear o modificar Restaurantes         |        |           | ✔          |             | ✔           |
| Manejar pedidos                           |        |           | ✔          |             | ✔           |
| Editar un recibo                        |        |           | ✔          |             | ✔           |
| Crear y modificar menus               |        |           | ✔          |             | ✔           |
| Crear Tiendas                         |        |           |            |             | ✔           |
| Modificar Tiendas                          |        |           |            | ✔           | ✔           |
| Crear un delivery                     |        |           |            | ✔           | ✔           |
| Administrar deliveries                     |        | ✔         |           |             | ✔           |
| Acceder a la CoopCycle API                  |        | ✔         | ✔         |             | ✔           |
| Editar roles para los usuarios/as                  |        |           |            |             | ✔           |
| Editar contratos y tarifas      |        |           |            |             | ✔           |


## Asignación de una tienda / restaurante

En la información sobre un usuario que tiene el rol de 'Restaurante', puede asignarle (para que sea su propietario) una tienda que haya creado previamente. También funciona para usuarios/as que tienen el rol de `propietario/a de la tienda` (asigne una Tienda que haya creado previamente).
