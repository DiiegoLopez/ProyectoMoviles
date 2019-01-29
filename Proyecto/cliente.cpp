#include "cliente.h"
#include <QTimer>
#include<QDebug>
#include<qwebsocket.h>
#include<QFile>
#include<QXmlStreamReader>

cliente::cliente()

{
    QTimer::singleShot(0,this,SLOT(Connect()));
}

void cliente::Connect()
{


   socket= new QWebSocket();
   socket->open(m_url);
   connect(socket,SIGNAL(connected()), this, SLOT(connected()));
   connect(socket,SIGNAL(connected()), this, SLOT(disconnected()));


}

void cliente::connected()
{
    qDebug()<<"connected";
    m_isConnected =true;
    sendMessage(cliente::leerXml());
}

 QString cliente::leerXml()
{
    QFile file("prueba.xml");

    if(file.open(QIODevice::ReadWrite)){
        QTextStream in(&file);
        QString xmlstring;
        xmlstring=in.readAll();

    return xmlstring;

}
 }
void cliente::disconnected()
{
    m_isConnected = false;
}

void cliente::sendMessage(QString message)
{
    socket->sendTextMessage(message);
    qDebug() << "Mesaje Enviado"<< message;
    qDebug()<<"";
    socket->close();

}
