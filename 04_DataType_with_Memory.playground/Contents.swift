import UIKit

/*:
# < DataType with Memory >
*/

/*:
## 1. Int , UInt
*/
/*:
### 1). Int
*/
                                                                                        /*
Int 타입은 정수타입으로써 양수와 음수를 표현할수 있다. 32비트 환경에서는 4Byte의 크기를,
64비트환경에서는 8Byte의 크기를 가지고 있다. 보통 우리가 사용하는 환경은 64비트인데 표현할 수
 있는 숫자는 대략 0을 포함한 약 -900경에서 +900경이다.
                                                                                        */
 
/*:
### 2). UInt
 */
                                                                                        /*
양의 정수를 표현할수 있는 타입으로써  Int와는 동일한 메모리크기를 가지고 있으나 값의 범위가 양수에만
포함되어 있기 때문에 표현할수 있는 값의 범위는 0을 포함한 약 + 1800경이다.
                                                                                
                                            
                                                                            
* Int와 UInt는 각각 8비트 16비트 32비트 64비트로 나뉜다. 각각 저장메모리의 크기가 다르며 최댓값과
최솟값의 크기를 .max, .min 프로퍼티로 확인 할수 있다
ex)                                                                                     */
Int.max
Int8.max
Int16.max

Int.min
Int8.min
Int16.min
                                                                                        /*
ex)                                                                                     */
UInt.max
UInt8.max
UInt16.max

UInt.min
UInt8.min
UInt16.min
                                                                            


/*:
## 2. Float , Double
*/
/*:
### 1). Float
*/
                                                                                        /*
실수를 선언할때 사용하는 타입으로써 크기는 4Byte, 소수점이하
 최대 6자리까지 정확도를 보장한다.

                                                                                        */
/*:
### 2). Double
*/
                                                                                        /*
실수를 선언할때 사용하는 타입으로써 크기는 8Byte, 소수점이하
최대 15자리까지 정확도를 보장한다.

ex)                                                                                     */
let pi: Float =  3.141592653589793238462643383279502884197169
print(pi)
let pi2: Double =  3.141592653589793238462643383279502884197169



                                                                                        /*
* Float 와 Double은 부동소수점을 이용하는 실수이기 때문에 Int,UInt 보다 훨씬 넓은 범위의
 수를 표현하는 것이 가능하다.

* 콘솔로그에 10진수가 표현할 수 있는 한계를 넘어 가끔씩 다른 진수로 표현된 경우도 있다. 이러한
경우에는 우리가 직접 표현된 진수를 바꿔주는 것도 가능하다
ex)                                                                                     */
10
0b10 // binary
0o10// octal
0xA //hexadecimal




/*:
## 3. String , Character
*/
/*:
### 1). String
*/
                                                                                       /*
- "" 안에 포함되어 있는 모든 리터럴을 문자열, 즉 String 이라고 한다
ex)                                                                                    */
let str:String = "String"


/*:
### 2). Character
*/
                                                                                       /*
- "" 안에 포함되어 있는 하나의 리터럴을 문자, 즉 Character 이라고 한다. 그러나 ""만 표기하고
 Character 타입을 따로 선언해주지 않으면 Swift의 형식추론기능이 해당 코드를 String 이라고 인식한다.
 그러므로 반드사 Character타입을 따로 선언해주어야 한다
                                                                                       */
let ch: Character  = "1"

type(of: ch) /* 타입을 확인하는 함수


 let doubleCh: Characters = "AA"
 Charaters 타입에 이렇게 두개의 문자를 지정해주는 것은 불가능하다. 오로지 하나의 문자만을 지정할 수 있다.


                                                                                       */



/*:*
## 4. Bool
*/
                                                                                        /*
- 불리언 타입으로써 참(true), 거짓(false)을 값으로 가질 수 있다. 보통 조건판단문에서 Bool타입을 많이 사용한다

ex)                                                                                     */
let valid: Bool = true
let isValid: Bool = false

                                                                                        /*
ex)                                                                                     */
if valid == true {
    print("\(valid)")
    
} else {
    print("\(isValid)")
}
