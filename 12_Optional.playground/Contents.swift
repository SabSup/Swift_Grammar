import UIKit
                                                                                                                      /*
/*:
# Optionals
*/
- 옵셔널이란 값이 있을 수도 없을 수도 있는 타입이다. 새로운 타입인 것은 아니고
 기존타입이름 뒤에 공백 없이 물음표키워드(?) 를 붙여서 표현을 하는 것 뿐이다. */

//ex)
let num: Int? = 123
let num2: Int? = nil

/* 값을 저장하고 싶지 않다면 옵셔널타입에 nil을 저장하면 된다. 그러나 놉옵셔널
 타입에 nil을 저장하면 에러가 발생한다. 논옵셔널타입이란 물음표키워드를 붙이지
 않은, 지금까지 앞단원에서 사용했었던 모든 타입을 의미한다.

 
 
 
/*:
## 1. Forced Unwrapping
*/
- 옵셔널형식으로 저장되어 있는 값은 Wrapping 되어있다. 쉽게 말해, 랩으로 포장되어
 있다고 생각하면 된다. 만약 이 값을 사용하고 싶다면 랩을 벗겨서(Unwrapping) 사용
 해야 한다. 벗겨내는 방법은 다양하다. 일단 첫번째로, 강제로 벗겨내는
 (Forced Unwrapping)에 대해 살펴보자. */
 
//ex)
let str: String? = "Swift"
print(str!)

/* 표현식 뒤에 느낌표를 붙이면 강제로 값이 추출이 된다. 그러나 nil을 저장한 후에
 강제로 추출하면 어떻게 될까? */
 
//ex)
let str2: String? = nil
//print(str!)
 
/* nil을 강제로 벗겨내는 것은 불가능하다. nil은 말그대로 값이 저장되어 있지 않다는
 뜻으로 값이 없는 것을 강제로 추출하는 것은 불가능할 뿐더러 논리적으로도 말이 안된다.
 그래서 강제로 추출하기 전에 항상 값이 저장되어 있는지 확인해야 한다. */

//ex
if num != nil {
    print(num!)
} else {
    print("nil")
}
/* => 123
 
 
 
        
/*:
## 2. Optional Binding
*/
- 옵셔널 값을 추출하는데 무조건 강제로 추출해야만 할까? 그것은 아니다. 옵셔널바인딩
 이라는 방법을 사용해서 안전하고 직관적인 방법으로 값을 추출할 수 있다. */
 
 //ex)
if let number = num {
    print(number)
}
/* 보통은 조건문에서 컨디션이 트루로 평가받아야 if블록 내부가 실행이 되었는데, 바인딩
 이 실행되는 조건은 좀 다르다. 옵셔널 표현식(let num: Int? = 123)을 평가하고
 값이 리턴된다면 포장된 랩을 벗겨내서 상수에 저장한다. 이것이 바로 바인딩이 성공한 것
 이다. 그러면 컨디션이 트루로 평가되고, if블록 내부가 실행된다 */


var say: String? = "Hello"
guard let say = say else {
    fatalError()
}
print(say)

/* guard문에서의 옵셔널 사용은 혼동하기 쉽다. 바인딩한 상수는 else블록내에서
 사용할 수 없다. else블록은 바인딩에 실패하였을때 실행되는 코드이다. 반드시 else
 블록 다음에서 사용이다가능하다.




/*:
## 3. Implicitly Unwrapped Optionals
*/
- 우리말로 '암시적 추출 옵셔널'로써 말그대로 값을 사용하기 위해 매번 옵셔널 바인
 딩을 하는 것이 번거울떄 사용하는 옵셔널입니다. 기존 옵셔널에 물음표키워드를 붙여
 줬다면 여기에서는 느낌표키워드를 붙여줍니다. */

//ex)
let pen: String! = "Monami"
print(pen)
 
/* 그러나 '암시적 추출 옵셔널' 역시 강제추출의 성격을 가지고 있기 때문에 크래시
 의 위험이 상당하다. 때문에 되도록이면 옵셔널바인딩을 하여 안전하게 추출하는 방법
 을 사용해야 한다.

    
    
    
/*:
## 4. Nil Coalescing Operator
*/
- 우리말로 닐병합연산자이며, 옵셔널 바인딩을 한줄로 줄이고 싶을때 자주 사용한다.
 중위연산자 ?? 을 사용하여 값이 있다면 좌측값을, nil이라면 우측값을 반환한다.
 좌측에는 옵셔널표현식이 와야 하며, 우측에는 표현식이 와야 한다. */

//ex)
let lastName: String? = nil
var naming = "My last name is" + (lastName ?? "X")
print(naming)
// => "My last name is X"
/* lastName에 nil이 저장되어 있기 떄문에 'X'가 반환된다.




/*:
## 5. Optional Chaining
*/
- 접근하고 싶은 속성이 nil일지도 모르는 상태에서, 그 속성에 접근하거나 호출하기
 위해 속성 뒤에 물음표키워드와 period를 사용해 한번에 쭉 나열하는 일련의 과정이
 다. 만약에 속성에 값이 있다면 옵셔널 값이 반환이 될 것이며 값이 nil이라면 nil
 이 반환될 것이다. 여기서 주의할 점은 접근하는 속성중에 하나라도 nil이 있다면
 nil이 반환된다는 것이다. 속성들이 서로 체인처럼 엮여있는 모양새라 하나의 속성이 전
 체의 체인 에 영향을 줄수 있다고 생각하면 된다. */

//ex)
class Idiya {
    var americano: String
    init(americano: String) {
        self.americano = americano
    }
}

class Dallcom {
    var cappuccino: String
    var idiya: Idiya?
    
    init(cappuccino: String) {
        self.cappuccino = cappuccino
    }
}

var cafe = Dallcom(cappuccino: "카푸치노")
cafe.idiya?.americano
/* Dallcom 인스턴스를 생성하고 옵셔널체이닝으로 americano 속성에 접근했다.
 그러나 값이 존재하지 않기 떄문에 nil이 return 되었다. */
