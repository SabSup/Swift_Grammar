import UIKit


                                                                                         /*
/*:
# TypeConversion
*/
- 메모리에 저장된 값을 다른 형식으로 바꿔서 새로운 값을 리턴하는 것을 의미한다.


ex)                                                                                                                                                                                  */
var a: Int = 123
var b: Int64 = 123                                                                                                                                                                   /*
a = b  ---> (실패) 같은 성격을 가지고 있는 형식이라도 '이름' 이 다르면 서로 다른 타입이라고 할 수 있다.

* 그렇다면 위에서 typeConversion 을 해준다면 어떻게 될까?
a = Int(b)  ---> (성공) b를 Int로 typeConversion 해주었다 이로써 변수 a, b 는 서로 호환될수 있다.



ex)
 산술표현식을 하는데에 있어서도 반드시 서로 같은 타입들끼리 표현식을 구성해줘야 에러 없이 올바른 값
 으로 평가가 가능하다
                                                                                         */
let x = 123
let y = 4.56                                                                                                                                                                         /*
x = y  ---> (실패) 서로 형식이 다르다
Double(x) + y  --->(성공) x에 실수형 타입인 Double로 타입컨버젼을 했다 -> 123.0 + 4.56


                                                                                                                    
* 여기서 문득 궁금해지는 부분이 있다. 성격이 엄연히 다른 형식들끼리 TypeConversion 이 가능할까?
 -> 가능하기도하고 불가능하기도 하다
ex)                                                                                                                                                                                  */
var int:Int = 123
var str = "456"
int = Int(str)! // 옵셔널을 사용하여 String타입의 변수를 컨버젼하여 Int타입변수에 할당 가능하다.
var resultInt = Int(str) // 새롭게 선언된 변수에 타입컨버젼을 하는 것도 가능하다
type(of: resultInt) // 옵셔널정수타입으로 변환된다.


var int2: Int = 123
var str2 = "456a"                                                                                                                                                                    /*
int2 = Int(str2)! ---> (실패) str2의 초기값이 "456" 이 아니라 "456a" 와 같이 숫자와 문자의 조합인
 문자열리터럴인 경우에는 Int타입변수에 할당이 불가능하다.
                                                                                         */
var result2 = Int(str2) // ---> (nil) 새롭게 선언된 변수에 타입컨버젼을 시도하면 nil이 return 된다.
                                                                                         
type(of: result2) // 옵셔널정수타입으로 변환된다.


                                                                                         /*

* 우리말로 해석하면 형변환이라고 해석되지만 typeCasting 역시 형변환이라고 해석되기 때문에
 TypeConversion 이라고 말하는 것이 옳다 왜냐하면 엄연히 서로 다르기 때문이다.

 Type Conversion -> 메모리에 저장된 값을 다른 형식의 값으로 변환해서 리턴한다.
 Type Casting -> 메모리에 저장된 값을 그대로 두고 컴파일러가 다른형식으로 바꾸도록 지시한다
                                                                                         */
