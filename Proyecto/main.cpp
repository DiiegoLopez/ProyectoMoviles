#include "basedatos.h"
#include "server.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    baseDatos w;
    w.Conectar();
    Server *server = new Server(3344);
    QObject::connect(server, &Server::closed, &a, &QCoreApplication::quit);




    return a.exec();
}
