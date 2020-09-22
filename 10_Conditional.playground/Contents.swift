import UIKit



                                                                                        /*
/*:
# Conditional
*/
/*:
 
## 1). if
*/
- if문은 if, else 와 같은 키워드를 사용하여 조건의 참과 거짓을 판단한다음,
 실행할 코드를 결정하는 문이다.

if <#condition#> {
    <#code#>
}
 * condition 에는 Bool표현식이 와야 한다. 표현식이 참으로 평가된다면 code
 를 실행한다. else if를 사용하여 경우의 수를 추가해도 되고 else의 사용은 선
 택사항이다.                                                                             */

  

//ex)
if true {
    print("참")
}



//ex)
let name = "SapSup"
if name == "SapSup" {
    print("제 이름은 \(name)입니다.")
} else {
    print("누구시죠?")
}

/* else if를 사용하여 경우의 수를 무한하게 작성할 수 있다. 그러나 코드의 가독
 성과 효율이 떨어져, 과다한 중첩을 사용하는 것은 지양해야 한다. */



// ex)
let number = 41

if number > 10 {
     print("over 10")
 } else if number > 40 {
     print("over 40")
 } else if number > 50 {
     print("over 50")
 } else if number > 100 {
     print("over 100")
 }
// => "over 10"

/* if문을 사용하면서 주의해야 할 점은 '논리적인 오류' 이다. 단락평가로 인해 최소
 한의 평가만을 실행하기 떄문에 까다로운 조건을 맨 앞애 위치시켜서 코드를 작성하도록
 하자. */
 
 
//ex)
if number > 100 {
     print("over 100")
 } else if number > 50 {
     print("over 50")
 } else if number > 40 {
     print("over 40")
 } else if number > 10 {
     print("over 10")
 }
/* => "over 40"




                                                                                        
/*:
## 2). Switch
*/
- 값의 일치여부에 따라서 실행할 코드를 결정하는 문이다. 주로 Pattern Matching
 이나 value Matching에 많이 사용된다.

 
switch <#value#> {
case <#pattern#>:
    <#code#>
default:
    <#code#>
}

* value에는 비교대상이, pattern에는 비교값이, code에는 matching 되었을때
 실행할 코드가 저장된다. pattern을 콤마로 나열하여 여라개의 패턴을 매칭시키는 것
 도 가능하다. ex) => pattern, pattern:  */



//ex)
let age = 50
switch age {
case 10:
    print("x")
case 30:
    print("x")
case 50:
    print("o")
default:
    break
}
/* 위의 코드에서 50에 matching이 되며 code를 출력하고 문장은 종료될 것이다.
 그러나 주의해야 될 부분은 비교대상의 모든 경우의 수가 switch문에 구현되어야 오
 류가 발생하지 않는다는 것이다. 'age = 50' 에서 정수로 표현할 수 있는 모든 경
 우의 수는 무한대이기 때문에 이 역시 오류가 발생한다. 그리고 이러한 오류를 방지
 하기 위해 switch에서는 default가 존재한다. */



//ex)
 let calc = "+"
 let a = 12
 let b = 34

 switch calc {
 case "+":
     print(a + b)
 case "-":
     print(a - b)
 case "*":
     print(a * b)
 case "/":
     print(a / b)
 default:
     break
 }
// calc에 저장될 수 있는 모든 경우의 수를 처리해야 한다.



//ex)
 switch a {
 case 0...10:
     print("0...10")
 case 11...100:
     print("0...100")
 default:
     break
 }
/* 범위를 매칭시키는 코드에서도 마찬가지로, 단락평가를 고려하여 작성을 해야
 한다. 가장 좁은 조건인 1...10을 까다로운 조건으로 판단, 맨위에 배치시킨
 다. */



//ex)
 switch a {
 case let odd where !odd.isMultiple(of: 2):
     print("홀수")
 case let even where even.isMultiple(of: 2):
     print("짝수")
 default:
     break

 }
/* Switch에서는 Value-Binding을 사용할 수도 있다. 비교대상인 'a'를
 복사해서 odd에 저장후 조건을 병합시킨다.
 
 
 
 
 
/*:
## 3). Guard
*/
- gurad문은 if문과 같이 Bool타입으로써 조건이 true일 경우 코드가 실행된다.
 그러나 if와 다르게 true일 때 실행되는 블록은 따로 존재하지 않으며, false
 일 때 실행되는  else블록만 존재할 뿐이다. 만약 true라면 guard문 다음에
 작성되어 있는 코드가 실행된다.
ex)
guard <#condition#> else {
     <#statements#>
 }

* else블록은 생략이 불가능할 뿐더러 내부에 실행을 중지시키는 코드가 반드시 들
 어가야 한다.  */
 

 
//ex)
func name(last: String) -> String {
    let naming = last
    guard naming == "Sab" else {
        return "x"
    }
    return "My first name is \(naming)."
}

print(name(last: "Sab")) // => "My first name is Sab."
print(name(last: "Something")) // => "x"

/* guard문은 주로 함수내부에서 많이 사용된다. 전역범위에서 사용되는 경우는
 거의 없다.  */
