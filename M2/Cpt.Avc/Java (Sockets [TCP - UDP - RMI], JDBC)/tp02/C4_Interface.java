package tp02;

import java.rmi.*;

public interface C4_Interface extends Remote{
	void Produit(int n, int m) throws RemoteException;
}
