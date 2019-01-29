#ifndef CLIENTE_H
#define CLIENTE_H




#include <QObject>
#include <QWebSocket>


class cliente : public QObject
{
    Q_OBJECT
public:

   cliente();

   QUrl m_url{"ws://localhost:3344"};
   bool m_isConnected;




signals:


public slots:
     void Connect();
     void connected();
     void disconnected();
     QString leerXml();

     void sendMessage( QString message);

private:
    QWebSocket *socket;

};



#endif // CLIENTE_H
