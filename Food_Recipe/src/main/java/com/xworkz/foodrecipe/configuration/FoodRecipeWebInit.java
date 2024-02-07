package com.xworkz.foodrecipe.configuration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class FoodRecipeWebInit extends AbstractAnnotationConfigDispatcherServletInitializer {
    protected Class<?>[] getRootConfigClasses() {
        System.out.println("INVOKING GET ROOT CONFIG CLASSES");
        return new Class[0];
    }

    protected Class<?>[] getServletConfigClasses() {
        System.out.println("INVOKING GET SERVLET CONFIG CLASSES");
        return new Class[]{FoodRecipeConfiguration.class};
    }

    protected String[] getServletMappings() {
        System.out.println("INVOKING GET SERVLET MAPPING");
        return new String[]{"/"};
    }
}
