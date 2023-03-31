package model;

import java.util.List;
import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.RollbackException;
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
    
    public int salvarDepartamento(Departamento dep){

        try{
            conectar();
            maneger.getTransaction().begin();
            maneger.persist(dep);
            maneger.getTransaction().commit();
            return 1;

        }catch(EntityExistsException | RollbackException ex){
            return 2; // ja cadastrado.

        }catch(Exception ex){
            return 3;
        }
    }
    
    public List<Departamento> listarDepartamento(){
        
            conectar();
            try{
                TypedQuery<Departamento> query = maneger.createNamedQuery("Departamento.findAll", Departamento.class);
                List<Departamento> dep = query.getResultList();
                return dep;
            }catch(NoResultException ex){
                return null;
            }
            
    }
    
//    public Departamento ConsultaDepartamento(String dep){
//        
////            conectar();
////            try{
////                TypedQuery<Departamento> query = maneger.createNamedQuery("Departamento.findAll", Departamento.class);
////                List<Departamento> dep = query.getResultList();
////                return dep;
////            }catch(NoResultException ex){
////                return null;
////           }
//            
//    }
    
    
    
    
}
