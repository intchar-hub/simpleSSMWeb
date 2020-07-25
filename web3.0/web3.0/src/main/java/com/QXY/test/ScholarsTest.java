package com.QXY.test;


import com.QXY.pojo.Scholar;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:applicationContext.xml","classpath:springmvc.xml"})
public class ScholarsTest {
    MockMvc mockMvc;

    @Autowired
    WebApplicationContext context;

    @Before
    public void initMockMvc(){
        mockMvc = MockMvcBuilders.webAppContextSetup(context).build();
    }

    @Test
    public void testGetByID() throws Exception{
       MvcResult result = mockMvc.perform(MockMvcRequestBuilders.get("/scholar/getScholarByID").param("ID","同济大学范立础")).andReturn();

       MockHttpServletRequest request = result.getRequest();
       Scholar scholar = (Scholar)request.getAttribute("scholar");
       System.out.println(scholar.toString());
    }
}
