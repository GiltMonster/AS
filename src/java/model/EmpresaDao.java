package model;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class EmpresaDao {
    
    private EntityManagerFactory conn;
    private EntityManager maneger;
    
    public void conectar(){
        conn = Persistence.createEntityManagerFactory("WebSitePU");
        maneger = conn.createEntityManager();
    }
    
    public Acesso validarLogin(String u, String s){
        
            conectar();
            try{
                TypedQuery<Acesso> query = maneger.createNamedQuery("Acesso.findByEmailSenhaFuncionario", Acesso.class);
                query.setParameter("emailFuncionario", u);
                query.setParameter("senhaFuncionario", s);
                Acesso acesso = query.getSingleResult();
                return acesso;
            }catch(NoResultException ex){
                return null;
            }
            
    }
}
