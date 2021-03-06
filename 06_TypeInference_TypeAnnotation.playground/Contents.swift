import UIKit

                                                                                        /*
/*:
# Type Inference, Type Annotation
*/

/*:
## 1).Type Inference
*/
- 형식추론이라고 변경되며, 저장되는 값에 따라 형식이 자동으로 지정되는 것을 의미한다.


ex)                                                                                     */
let num = 123
type(of: num) /* type을 확인하는 함수 -> 결과는 Int
 Swift가 가지고 있는 형식추론으로 인하여 컴파일러는 num의 타입을 Int라고 결정한다
 Int라고 결정된 이유는 정수 123을 가장 빠르게 처리할수 있는 타입이 Int이기 때문이다


ex)                                                                                     */
let num2 = 12.3
type(of: num2) /* -> Double


ex)                                                                                     */
let str = "123"
type(of: str) /* 같은 이유로 상수 str은 컴파일러가 String타입으로 결정한다.


* 만약 'let str' 이렇게만 선언을 해버리면 값을 추론 할수 있을까?.
 -> 정답은 'No' 다. 형식추론은 초기값을 단서로 가장 빨리 처리할 수 있는 형식으로 추론 되는데
 'let str' 에는 키워드와 식별자만 존재 할뿐 초기값은 할당 되지 않았다.


                                                                                        */


                                                                                        /*

/*:
## 2).Type Annotation
*/
- 타입을 직접지정하는 것을 의미한다. 형식 추론을 이용하여 코드를 작성하는 방법은 매우 간편하고
 효율적이지만, 직접 지정하는 방법 또한 분명 장점이 존재한다. 형식추론은 기본적으로 컴파일러가
 해당 초기값을 추론하는 '과정' 이 존재하기 때문에 상대적으로 직접 타입을 지정하는 방법 보다는
 컴파일하는 시간이 더 길 수 밖에 없다. 그래도 그 차이는 미세하여 짧은 코드 안에서는 크게 차이
 를 느끼지 못한다. 그러나 만약 코드의 줄이 몇만개, 혹은 몇십만개가 넘어간다면 이런 미세한
 시간의 차이들이 중첩되어, 나중에는 상당한 차이를 유발할 수 있다. 만약 그런 상황을 피하고 싶다면,
 Type Annotation을 사용하는 것이 좋다.

ex)                                                                                     */
let number: Int = 123
let number2: String = "234"




