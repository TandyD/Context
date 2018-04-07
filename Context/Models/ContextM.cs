using System;
using System.Collections.Generic;

namespace ContextM{
	public interface IContext{ 
		bool Partecipa(int idU, int idC);
		void Vota(int idU, int idP);
		bool Iscriviti(Utente utente);
		List<Sfida> ViewSfide(int idC);
		Sfida ViewSfide(int idC);
		void AddSfida(Sfida sfida);
		bool FineSfida(Sfida sfida);
	}

	public class ImplContext: IContext {

	}

}