#include "basedatos.h"
#include <QDebug>
#include <QtSql>
#include <QUuid>
#include <QSqlQuery>

baseDatos::baseDatos()
{

}
void baseDatos::Conectar(){

QSqlDatabase db = QSqlDatabase::addDatabase("QPSQL");
db.setHostName("127.0.0.1");
db.setPort(5432);
db.setDatabaseName("servicio_Tecnico");
db.setUserName("usuario");
db.setPassword("usuario");
bool ok = db.open();

if(ok)
{
    qDebug() << "Conectado ok";


} else{
    qDebug()<< "Error de conexion";
}
}
