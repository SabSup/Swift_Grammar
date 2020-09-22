import UIKit

import UIKit

/*
/*:
# Closure
*/
- 클로저는 하나의 코드조각으로써 Unnamed Closure와 Named Closure로 나뉜다.
 Named Closure는 쉽게 말해 그동안 사용했던 함수이며, UnNamed Closure는 이
 름이 없는 함수로써 swift에서 말하는 Closure 라고 할수있다. Closure는 함수를
 표현하는데에 있어 간결하고 명확하게 사용이 가능하고, Named Closure와 함수와 서
 로 호환된다. */

/*:
## 1. Closure Expressions
*/
//ex) 정렬메소드
var names = ["Alfa", "Bravo", "Charlie", "Delta", "Echo"]
/* 정렬메소드인 sorted(by:)는 Parameter 2개를 받아서 Bool을 return한다.
 이를 함수로 표현하여 코드를 작성하면 아래와 같다. */


//ex)
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
/* 내림차순으로 정렬하는 함수를 작성하였다. 이것을 다시 클로져 표현문법 (인라인클로저)
 로 다시 작성해보자. */


//ex)
var reversedName = names.sorted(by: {(s1: String, s2: String) -> Bool in
    return s1 > s2
}) /*




/*:
## 2. Syntax Optimization
*/
- 클로져는 몇개의 조건이 충족된다는 전제하에 문법을 축약하여 표현하는 것이 가능하다. 위에서
작성했던 정렬메소드를 예시로 축약하여 표현해보자. */

names = ["Alfa", "Bravo", "Charlie", "Delta"]
reversedName = names.sorted(by: {(s1: String, s2: String) -> Bool in
    return s1 > s2
})

/*:
### 1). Inferring Type
*/
reversedName = names.sorted(by: {s1, s2 in
    return s1 > s2
})
/* sorted(by:)는 위에서 나열된 문자열의 타입을 예상할수 있기 때문에 타입생략이 가능하다. */


/*:
### 2).  Implicit Returns
*/
reversedName = names.sorted(by: {s1,s2 in
    s1 > s2
})
/* 단일 return문이라면 return 키워드 또한 생략이 가능하다. */

/*:
 ### 3). Shorthand Arguments Names
*/


reversedName = names.sorted(by: { $0 > $1})

/* 입력인자와 반환인자가 서로 같다는 것을 알기때문에 인자를 축약하는 것이 가능하고,
    in 생략도 가능하다. */


/*:
 ### 4). Trailing Closures
*/

/* 마지막 파라미터가 클로져라면 Trailing Closures 괄호와 파리미터를 생략하여 표현
 하는 것이 가능하다.*/

//ex) by생략
reversedName = names.sorted() { $0 > $1}
//ex) 괄호생략
reversedName = names.sorted { $0 > $1} /*


/*:
## 3. Capturing Values
*/
- 클로저는 상수나 변수의 값을 캡쳐할수 있다. 값을 캡쳐한다는게 무슨 뜻일까?
쉽게 말해 원본 값이 없어져도 클로져의 바디안에서 그 값을 여전히 사용할수 있다는 것이다
가장 단순한 캡쳐형태는 함수안에 함수가 있는 nestedFunction 이다. */

/*:
### 1). NestedFunction Capturing Value
*/

func outFunc(with amount: Int) -> () -> Int {
    var totalValue = 0
    func inFunc() -> Int {
        totalValue += amount
        return totalValue
    }
    return inFunc
}
/* 현재 함수의 타입은 (Int) -> () -> Int 이다.
 현재 파라미터의 타입은 (with amount: Int) , 반환값의 타입은 () -> Int 이다
쉽게 말해 현재 함수는 () -> Int 를 반환하는, 즉 클로저 형태를 반환한다는 것이다.  */
 

/*
func inFunc() -> Int {
    totalValue += amount
    return totalValue
}

* 내부함수 만 잘라서 확인을 해보면 도무지 무슨 함수인지 이해가 가지 않는다.
 totalValue, amount를 함수내 변수로 선언해준것도 아니고 그렇다고 파라미터
 로 존재하는 것도 아닌데 도대체 어디서 온걸까?.... 그렇다 상위의 함수에서 두
 값을 캡쳐해온것이다. 이것이 바로 클로저의 값 캡쳐기능이다! */


let result = outFunc(with: 10)

result() // 10
result() // 20
result() // 30
/* result와 amount가 캡쳐링 되어서 계산이 계속 누적된다.그러나 여기서 약간
 이상한 점이 있다. 새로운 클로져를 선언해보자. */

let result2 = outFunc(with: 4)
result2() // 4
result2() // 8
result2() // 12
/* 여기서는 값이 다르게 축적되는데 도대체 어떤 방식으로 캡쳐가 된다는 걸까? 값이 저장된다는 말은 무슨 뜻인가?
 => 클로져는 객체로써 존재할뿐이다 서로 전혀 연동되지 않는다. 각 객체가 본연의 값을 저장하고 있고, 각자의 기능을 따로 수행하고 있는 것이다. */


 









/*:
 ### <연습>
*/
// 문제1. 중첩함수 호출하기
func greet() -> () -> () {
    func sayGoodmornig() {
        print("Good, Morning!!!")
    }
    return sayGoodmornig
}

greet()()
/* 함수를 호출하면 (파라미터가 없고 리턴형이 없는) 클로져가 반환된다!
 클로져가 호출된것을 반환하는 것이 아니다. 그러므로 다시한번 호출을 해줘야 한다. */

let ret = greet() // ret에 greet()를 참조하겠다는 의미





//문제2. 반환값으로 Closure를 받는 형태를 인라인 클로져로 작성해보기

func greet2() -> () -> () {
    return { () -> () in
        print("how are you")
    }
}
greet2()()





// 문제3. 클로져를 파라미터로 사용하기
func addd(_ i: Int, _ j: Int, _ handler: (Int) -> () ) {
    let sum =  i + j
    handler(sum)
}
/* 두개 값을 받고, 더해서 세번째 파라미터(클로저)에 입력 값으로 전달한다
 클로져를 파라미터 받는 함수를 작성할 수 있다.  -> 함수내부에서 클로져를
 호출하는 코드를 넣어줘야 한다. */








