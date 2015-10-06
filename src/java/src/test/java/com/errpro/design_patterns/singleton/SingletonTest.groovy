package com.errpro.design_patterns.singleton

/**
 * Created by zpw on 15-11-6.
 */
class SingletonTest extends GroovyTestCase {
    void testGetInstance() {
        def singleTon = Singleton.getInstance()
        junit.framework.TestCase.assertTrue(singleTon != null)
        def singleTon2 = Singleton.getInstance()
        groovy.util.GroovyTestCase.assertEquals(singleTon, singleTon2)
    }
}
