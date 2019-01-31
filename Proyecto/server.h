#ifndef SERVER_H
#define SERVER_H


#include <QtCore/QObject>
#include <QtCore/QList>
#include <QtCore/QByteArray>

class QWebSocketServer;
class QWebSocket;


class Server: public QObject
{
    Q_OBJECT

public:
    explicit Server(quint16 port);
    ~Server();

signals:
    void closed();

private slots:
    void onNewConnection();
    void processTextMessage(QString message);
    void socketDisconnected();
    bool validaXML(char c);

private:
    QWebSocketServer *m_pWebSocketServer;
    QList<QWebSocket *> m_clients;
};

#endif
