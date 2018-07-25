# mousePositionTransportByProcessing
# 프로세싱으로 구축한 클라이언트에서 마우스의 좌표를 뽑아내 서버로 전송하고, 서버에서 이를 화면에 띄워주는 예제  

### 1. 서버를 염(클라이언트가 접속하면 ip를 보여줌)  
### 2. 클라이언트는 마우스를 드래그 하면, 화면에 마우스 좌표에 대한 문자열을 전송하고, 화면에 원을 그려준다음 콘솔에 송신한 문자열을 보여줌  
### 3. 서버는 클라이언트로부터 전송받은 문자열이 있을 경우 해당 문자열을 imcomingMessage변수에 넣고, 콘솔에 보여준 다음, 다시 클라이언트에 보냄  
### 4. 클라이언트는 서버에 보냈던 데이터를 다시 돌려받고, 이를 분해하여 다시 변수 배열에 넣고, 원을 그리는데 사용한 다음 콘솔에 출력함  

## [소스코드](https://github.com/mtinet/mousePositionTransportByProcessing/tree/master/code)  
![](https://github.com/mtinet/mousePositionTransportByProcessing/blob/master/image/mousePositionTransportByProcessing.png?raw=true)  
