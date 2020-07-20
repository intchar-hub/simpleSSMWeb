/**
 * author:赵宸浩
 * create time:7/15
 * update time:7/19
 */

package com.zch.controllertest;

import com.QXY.pojo.User;

import static org.junit.Assert.*;


@WebAppConfiguration

@ContextConfiguration({ "classpath:spring-mybatis.xml", "classpath:spring-mvc.xml"})

@RunWith(SpringJUnit4ClassRunner.class)

@Transactional(transactionManager = "transactionManager")
@Rollback(value = false)
public class UserControllerTest {
    private MockMvc mockMvc;
    @Autowired
    private WebApplicationContext wac;
    @Autowired
    private UserController userController;
    @Before
    public void setup() {
        //mockMvc = MockMvcBuilders.webAppContextSetup(wac).build();
        mockMvc = MockMvcBuilders.standaloneSetup(userController).build();
    }

    @Test
    public void userControllerTest() throws Exception {
        String result = mockMvc.perform(
                MockMvcRequestBuilders.post("http://127.0.0.1:8888/user/checkUserName")
                        .param("username","1377262954"))
                .andExpect(status().isOk())
                .andDo(print())
                .andReturn().getResponse().getContentAsString();

        System.out.println(result);
    }
