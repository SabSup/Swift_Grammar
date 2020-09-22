import UIKit



                                                            /*
/*:
# < Scope >
*/
                                                                
스코프는 선언이 되어 있는 위치에 따라서 GlobalScope, LocalScope로 나뉜다.
이 두가지를 구분하는 기준은 '{}' 이다.

                                                                
/*:
## 1). GlobalScope
*/
                                                                                                                
 어떠한 {}에도 속하지 않는다. 만약 변수의 선언이 {} 밖에서 이루어 진다면
그것을 우리는 '전역변수'라고 한다.
                                                              


/*:
## 2). LocalScope
*/
                                                                                             
- {}안에 속한 범위를 의미한다.

                                                                                                            
* 보다시피 {}에 속하지 않는 범위는 globalScope이며, {}안에 속하는 범위는 localScope이다.
ex)                                                                                                                               */
let num = 123

//globalScope

func number(int: Int) {
    num
    num2
    
    //localScope
    
    if true {
       num
       num2
    
        
    }
    
    num
    num2
}

let num2 = 456


                                                                /*
                                                                                        
* Scope에는 다음과 같은 규칙을 반드시 따라야 한다

 1.동일한 Scope에 있는 변수나 상수에 접근이 가능하다
 
 2.동일한 Scope에 있는 변수나 상수에 접근하기 위해서는 이전에 미리 선언이 되어 있어야 한다.
 
 3.localScope는 자신의 상위 localScope , 또는 globalScope에 선언된 변수, 상수에 접근이 가능하다
 
 4.상위Scope에서는 하위Scope에 접근하는 것이 불가능하다
 
 5.서로 다른 Scope에서 동일한 이름을 가진 변수, 상수가 존재한다면 가장 인접해 있는 값을 사용한다
 
 6.class,struct 속성이나 메소드가 선언되어야 하는 위치에 표현식을 사용할 수 없기 때문에 문법적으로 접근하는 것이
  불가능하나,메소드의 localScope에는 접근이 가능하다.

 
 
ex)                                                             */
struct Name {
    //접근 불가능
    
    func Naming() {
        //접근가능
        
        
    }
}
                              
