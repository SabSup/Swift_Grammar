import UIKit
/*:
# TypeAlias
*/
                                                                                    /*
- 기본자료형에 사용자가 정의한 (이름)별명을 지정하는 것을 의미한다. 새로운 자료형을
 만드는 것은 아니다. 단순히 기존에 존재하던 자료형에 별명을 붙이는 것 뿐이다.                            */

typealias Coordinate = Double


var lat: Coordinate = 12.34
var lon: Double = 56.78
lat = lon // ---> (성공) 변수를 할당하는 것이 성공함에따라 서로 타입이 동일하다는 것을 확인할 수 있다.
