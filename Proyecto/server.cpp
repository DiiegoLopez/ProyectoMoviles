#include "server.h"
#include "QtWebSockets/qwebsocketserver.h"
#include "QtWebSockets/qwebsocket.h"
#include <QtCore/QDebug>
#include <iostream>
#include <libxml/parser.h>
#include <libxml/tree.h>



Server::Server(quint16 port) :
    m_pWebSocketServer(new QWebSocketServer(QStringLiteral("Test Server"),
                                            QWebSocketServer::NonSecureMode, this))
{
    if (m_pWebSocketServer->listen(QHostAddress::Any, port))
    {
        qDebug() << "Server iniciado en puerto:" << port;
        connect(m_pWebSocketServer, &QWebSocketServer::newConnection, this, &Server::onNewConnection);
        connect(m_pWebSocketServer, &QWebSocketServer::closed, this, &Server::closed);
    } // end if
}


Server::~Server()
{
    m_pWebSocketServer->close();
    qDeleteAll(m_clients.begin(), m_clients.end());
}


void Server::onNewConnection()
{
    QWebSocket *pSocket = m_pWebSocketServer->nextPendingConnection();

    qDebug() << "Socket conectado:" << pSocket;

    connect(pSocket, &QWebSocket::textMessageReceived, this, &Server::processTextMessage);
    connect(pSocket, &QWebSocket::disconnected, this, &Server::socketDisconnected);

    m_clients << pSocket;
}


void Server::processTextMessage(QString message)
{
    QWebSocket *pClient = qobject_cast<QWebSocket *>(sender());
    qDebug() << "De:" << pClient << "Mensaje recibido:" << message;



}


    bool validaXML(const char *c)
    {

        bool result = false;

        /// Crea el contexto del analizador.
        xmlParserCtxtPtr ctxt = xmlNewParserCtxt();
        if (ctxt == NULL)
        {
            std::cout << "Error al crear el contexto del analizador." << std::endl;
            return false;
        } // end if

        /// Analiza el archivo activando la opción de validación DTD.
        xmlDocPtr doc = xmlCtxtReadFile(ctxt, c, NULL, XML_PARSE_DTDVALID);
        if (doc == NULL)
        {
            std::cout << "Error al analizar el archivo." << std::endl;
            return false;
        } // end if

        /// Comprueba la validez del XML.
        if (ctxt->valid == 0)
        {
            std::cout << "El archivo XML no es valido." << std::endl;
        } else {
            std::cout << "El archivo XML es valido." << std::endl;
            result = true;
        } // end if

        /// Libera memoria.
        xmlFreeDoc(doc);
        xmlFreeParserCtxt(ctxt);

        return result;
    }




void Server::socketDisconnected()
{
    QWebSocket *pClient = qobject_cast<QWebSocket *>(sender());
    qDebug() << "Socket desconectado:" << pClient;

    if (pClient)
    {
        m_clients.removeAll(pClient);
        pClient->deleteLater();
    } // end if
}
