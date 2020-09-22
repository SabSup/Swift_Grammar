import UIKit
                                                                /*
/*:
# Function
 */
- 특정한 동작을 수행하는 코드블럭이다. 사용자가 이름을 지정하면 동작을 수행함에 있어서
일일이 코드구현하지 않고, 이름을 호출함으로써 보다 간편하게 동작을 구현할 수 있다.

/*:
## 1. Parameters
*/
- 함수에 전달하는 값을 파라미터라고 한다. 함수내부에서 임시상수로 사용이 가능하다. */

//ex)
func add(a: Int, b: Int) {
    print(a + b)
}
add(a:3, b:5) //호출
/* 하지만 호출할때 전달하는 인자는 아규먼트라고 부른다. */



//ex)
func doSomething(str: String) {
//  str = ""
    print(str)
}
doSomething(str: "Hello") //호출
/* Parameter(str)는 상수이다 입력 값이 오염되어버리면 예상치 못한 결과가 발생할
 수 있기 때문에 명시적으로 상수이며 함수의 코드블럭내에서 Parameter의 값을 변경하
 면 컴파일 에러가 발생한다. */



//ex)
func printName(name: String = "홍길동") {
     print(name)
 }
/* Parameter에는 기본값을 선언할수 있다. 이는 함수 호출시에 Argumen 생략할
 수 있다는 장점이 있다.
 
 
/*:
 ## 2. Argument Label
*/
- 기본적으로 Parameter는 함수를 호출할때 인자로 사용 된다. 그러나 Argument
 Label(with)을 명시해주면, 전달인자로써 사용이 가능하다. Paramter와 Argu
 ment를 명확하게 구분할 수 있다는 장점으로 가독성이 좋아진다. */

//ex)
func doSome(with example: String) {
    print(example)
}
doSome(with: "Hi")
/* Argument Label은 Parameter 이름 앞에 작성한다. 현재 사용되는 Argument
 Label은 'with'이다.

 
/*:
## 3. Return Value
*/
- 함수에서 Return Value를 가지는 것이 필수적인 것은 아니다. 그러나 처리한 결과를
 함수의 밖에서 사용하고 싶다면 Return Type을 명시하고 결과를 return 해야한다.
 일단 값을 반환하는 것을 명시했다면, 모든 코드의 실행이 끝나고, 마지막에 반드시 return
 키워드를 삽입해 제어가 밖으로 빠져나가게 해야 한다. */

//ex)
func totalValue(int: Int) -> Int {
    var sum = 0
    for i in 0...int {
        sum += i
    }
    return sum
}
totalValue(int: 100) /*

    
/*:
## 4. Variadic Parameters
*/
- 사용자가 원하는 수만큼 파라미터를 전달할 수 있다. 여러개를 한번에 계산하는 경우
 편리하게 사용할 수 있으며, 파라미터의 타입뒤에 점 세개(...)을 붙여서 사용한다. */


func sum(with nums: Int...) -> Int {
    var totalValue = 0
    for num in nums {
        totalValue += num
    }
    return totalValue * 2
}
sum(with: 1,2,7)
/* Arguments 1,2,7 이 하나의 Parameter로 처리된다. 주의할 점은 하나의 함수에서
 Variadic Parameters는 하나만 존재하야 한다는 것이다. 두개 이상이 존재하면 컴파일
 에러가 발생한다. 그리고 만약에 Variadic Parameters의 Argument Label을 언더
 스코어로 처리한 상태에서 Variadic Parameters 가 아닌 다른 Parameter를 선언해
 야 한다면 Argument Label을 명시하여 구분을 해줘야 한다.*/
 
