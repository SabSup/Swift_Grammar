import UIKit


                                                                                             /*

/*:
# Operator
*/
- 연산을 수행하는 기호로써, 우리말로 연산자라한다. 연산되는 값(피연산자)의 수에 따라
 단항연산자, 이항연산자, 삼항연산자로 나뉜다
                                                                                             */
var a = 1
var b = 2
a + b
// + 를 연산자
// a, b 를 피연산자라고 한다.
                                                                                             /*



     
/*:
## 1. 연산자 수의 따른 분류
*/
/*:
### 1).단항연산자
*/
ex)                                                                                         */
+ a // 이렇게 피연산자가 하나 존재한다면 단항연산자라고 한다.
                                                                                            /*

 
/*:
### 2). 이항연산자
*/
ex)                                                                                         */
a + b // 피연산자가 두개 존재한다면 이항연산자라고 한다

/* 단항연사자를 사용하고 싶다면 반드시 공백을 포함시켜 표현해야 연산자로써 유효한 기능을 수행한다.
  +a -> x
 + a -> o
                                                                                            */
                                                                                            /*
/*:
### 3). 삼항연산자
*/
ex)                                                                                         */
var a2 = 1
var b2 = 2
var c2 = 0
a2 == 1 ? b2 : c2 // 피연산자가 세개 존재한다면 삼항연산자라고 한다.



                                                                                          
/*:
## 2. 연산자 위치에 따른 분류
*/
/*:
### 1). 전치연산자(Prefix Operator)
*/
var x: Bool = true
x  // 연산자가 피연산자 앞에 위치해 있다면 전위 연산자라고 한다




/*:
### 2). 중치연산자(Infix Operator)
*/

a + b // 연산자가 피연산자 사이에 위치해 있다면 중치연산자라고 한다


/*:
### 3). 후치연산자(Postfix Operator)
*/
var opt: Int? = 1
opt! // 연산자가 피연산자 뒤에 위치해 있다면 후치연산자라고 한다

                                                                                           /*
/*:
## 3. 연산자의 종류
*/
/*:
### 1) 산술연산자
*/
- 수학에서 쓰이는 계산과 같은 연산을 수행하는 연산자                                                    */
a + b
a - b
a * b
a / b
a % b
                                                                                           /*
 
 
/*:
### 2) 비교연산자
*/
- 값을 서로 비교할때 사용하는 연산자로써 결과는 항상 Bool 이다.                                           */


a == b // equal to
a != b // not equal to
a > b // greater than
a >= b // greater than or equal to
a < b // less than
a <= b // less than or equal
                                                                                           /*
 
 
/*:
### 3). 논리연산자
*/
- 논리식을 표현하여 결과를 항상 true 또는 false 로 나타내는 연산자이며,피연산자는
 Bool Expression이다.

(1). && => Logical And
ex)                                                                                        */
true && true
true && false
false && true
false && false
                                                                                           /*
(2). || => Logical Or
ex)                                                                                        */
true || true
true || false
false || true
false || false
                                                                                           /*
(3). ! => (Logical not)
ex)                                                                                        */
!true
!false


/* 논리연산자를 사용할때 주의해야 할점은 단락평가(short- circuit evaluation)
을 항상 고려해야 한다는 것이다. 단락 평가는 최소한의 평가를 하는 것으로싸 만약 첫번째
값이 참이 된다면 두번째 값은 평가하지 않고 첫번째 값을 반환한 뒤에 코드를 종료하는 것
을 말한다.

 
 
ex)                                                                                        */
false && true                                                                              /*
- Logical And는 두 값이 모두 true가 되어야 true를 반환한다. 그러나 첫번째 피연
 산자가 false이기 떄문에 두번째 피연산자는 평가할 필요가 없으므로 단락평가를 실행하여
 false를 반환한다.

 
 
ex)                                                                                        */
false && false // 위 내용과 같다.
  

                                                                                           /*
ex)                                                                                        */
true || true                                                                               /*
- Logical Or는 두값중 하나만 true가 되더라고 true가 반환된다. 첫번째 피연산자가
 이미 true이기때문에 두번째 피연산자를 평가할 필요없이 단락평가를 실행하여 true를 반
 환환다                                                                                      */
true || false // 위내용과 같다.

                                                                                           /*
/*:
### 4). 복합할당연산자
*/

- 복합할당연산자는 연산과 할당을 합쳐놓은 형태로 코드를 간결하게 표현할 수 있다는 장점
 이 있다.

ex)                                                                                         */
a = a + b // --> a += b
a = a - b // --> a -= b
a = a * b // --> a *= b
a = a / b // --> a /= b

                                                                                            /*
/*:
### 5). 범위연산자
*/
- 값의 범위를 표현할때 사용하는 연산자이며, lowerBound 와 Upperbound를 통해 범
 위를 지정할 수 있다.
* lowerBound 배열의 맨 처음 값
* UpperBound 배열의 맨 마지막 값
 

1).Closed Range Operator
- UpperBound가 포함되는 연산자로써 기본적으로 오름차순으로 표현한다.
 
 
 
ex)                                                                                         */
1 ... 10
1...10

// * 만약 오름차순을 내림차순으로 바꾸고 싶다면 .reversed()라는 메소드를 사용한다.
(1 ... 10).reversed()
12.34 ... 56.78


   
                                                                                           /*
2). Half Open Range Operator
- UpperBoundrk 가 포함되지 않는 연산자로써 기본적으로 오름차순으로 표현한다.

 
 
ex)                                                                                        */
1 ..< 10
1..<10                                                                                     /*


* 만약 범위연산자를 반복문에서 사용하고 싶다면 무한루프에 주의 해야한다.
ex)
for num in ..<10 {
    print(num)
}

* lowerBound를 지정해주지 않았기 때문에 범위는 무한대가 되어, 무한루프에 빠지게 된다.
 고정된 범위가 지정이 되어있지 않은 상태에서 단항연산자를 사용하는 것은 위험하다.
                                                                                            */
