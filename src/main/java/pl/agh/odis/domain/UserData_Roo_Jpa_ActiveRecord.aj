// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pl.agh.odis.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;
import pl.agh.odis.domain.UserData;

privileged aspect UserData_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager UserData.entityManager;
    
    public static final List<String> UserData.fieldNames4OrderClauseFilter = java.util.Arrays.asList("name", "lastname");
    
    public static final EntityManager UserData.entityManager() {
        EntityManager em = new UserData().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long UserData.countUserDatas() {
        return entityManager().createQuery("SELECT COUNT(o) FROM UserData o", Long.class).getSingleResult();
    }
    
    public static List<UserData> UserData.findAllUserDatas() {
        return entityManager().createQuery("SELECT o FROM UserData o", UserData.class).getResultList();
    }
    
    public static List<UserData> UserData.findAllUserDatas(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM UserData o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, UserData.class).getResultList();
    }
    
    public static UserData UserData.findUserData(Long id) {
        if (id == null) return null;
        return entityManager().find(UserData.class, id);
    }
    
    public static List<UserData> UserData.findUserDataEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM UserData o", UserData.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<UserData> UserData.findUserDataEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM UserData o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, UserData.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void UserData.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void UserData.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            UserData attached = UserData.findUserData(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void UserData.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void UserData.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public UserData UserData.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        UserData merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
