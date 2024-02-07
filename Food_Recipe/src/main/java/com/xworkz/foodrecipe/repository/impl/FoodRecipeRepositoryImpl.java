package com.xworkz.foodrecipe.repository.impl;

import com.xworkz.foodrecipe.dto.FoodRecipeDto;
import com.xworkz.foodrecipe.dto.UserDto;
import com.xworkz.foodrecipe.repository.FoodRecipeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import java.util.List;

@Repository

public class FoodRecipeRepositoryImpl implements FoodRecipeRepository {

    @Autowired
    public EntityManagerFactory entityManagerFactory;

    @Override
    public boolean save(UserDto userDto) {
        EntityManager entityManager= entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(userDto);
        entityManager.getTransaction().commit();
        return true;
    }

    @Override
    public boolean login(String emailId, String password) {
        EntityManager entityManager= entityManagerFactory.createEntityManager();
        Query query=entityManager.createNamedQuery("getUserByEmailIdAndPassword");
        query.setParameter("emailId",emailId);
        query.setParameter("password",password);
        try{
            query.getSingleResult();
            return true;
        }catch (NoResultException e){
            return false;
        }


    }

    @Override
    public List<UserDto> findAllUser() {
        EntityManager entityManager= entityManagerFactory.createEntityManager();
        Query query=entityManager.createNamedQuery("getAll");
        return query.getResultList();
    }

    @Override
    public UserDto getUserById(int userId) {
        EntityManager entityManager= entityManagerFactory.createEntityManager();
        return (UserDto) entityManager.createNamedQuery("getUserById").setParameter("userId",userId).getSingleResult();
    }

    @Override
    public UserDto getUserByLoginId(String emailId) {
        EntityManager entityManager= entityManagerFactory.createEntityManager();
        Query query=entityManager.createNamedQuery("getUserbyloginId");
        query.setParameter("emailId",emailId);
        return (UserDto) query.getSingleResult();
    }

    @Override
    public boolean updateUser(UserDto userDto) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.merge(userDto);
        entityManager.getTransaction().commit();
        return true;
    }

    @Override
    public boolean deleteUserById(int userId) {
        EntityManager entityManager= entityManagerFactory.createEntityManager();
        UserDto userDto=entityManager.find(UserDto.class,userId);
        if(userDto!=null){
            entityManager.getTransaction().begin();
            entityManager.remove(userDto);
            entityManager.getTransaction().commit();
            return true;
        }
        return false;
    }

    @Override
    public UserDto checkEmailId(String emailId) {
        EntityManager entityManager= entityManagerFactory.createEntityManager();
        Query query=entityManager.createNamedQuery("getEmailId").setParameter("emailId",emailId);
        System.out.println("hi");
        return (UserDto) query.getSingleResult();
    }

    @Override
    public UserDto checkContactNumber(long contactNumber) {
        EntityManager entityManager= entityManagerFactory.createEntityManager();
        Query query=entityManager.createNamedQuery("getContact").setParameter("contactNumber",contactNumber);
        return (UserDto) query.getSingleResult();
    }

    @Override
    public boolean save(FoodRecipeDto foodRecipeDto) {
        EntityManager entityManager= entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(foodRecipeDto);
        entityManager.getTransaction().commit();
        return true;

    }

    @Override
    public List<FoodRecipeDto> viewAllRecipe() {
        EntityManager entityManager= entityManagerFactory.createEntityManager();
        Query query=entityManager.createNamedQuery("viewAll");
        return query.getResultList();
    }

    @Override
    public FoodRecipeDto getFoodById(int foodRecipeId) {
        EntityManager entityManager= entityManagerFactory.createEntityManager();
        return (FoodRecipeDto) entityManager.createNamedQuery("getFoodById").setParameter("foodRecipeId",foodRecipeId).getSingleResult();
    }

    @Override
    public boolean updateFood(FoodRecipeDto foodRecipeDto) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.merge(foodRecipeDto);
        entityManager.getTransaction().commit();
        return true;
    }


    @Override
    public boolean deleteFoodById(int foodRecipeId) {
        EntityManager entityManager= entityManagerFactory.createEntityManager();
        FoodRecipeDto foodRecipeDto=entityManager.find(FoodRecipeDto.class,foodRecipeId);
        if(foodRecipeDto!=null){
            entityManager.getTransaction().begin();
            entityManager.remove(foodRecipeDto);
            entityManager.getTransaction().commit();
            return true;
        }
        return false;
    }
}
