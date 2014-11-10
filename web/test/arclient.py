import socket
import time
import datetime

def ArHeartBeatGen():
	ts = int(time.mktime(datetime.datetime.utcnow().utctimetuple()))
	return '0 HB ' + str(ts) + ' 1;'

if __name__ == '__main__':
	sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	sock.connect(('localhost', 8000))
	while True:
		sock.send(ArHeartBeatGen())
		print sock.recv(1024)
		time.sleep(1)
	sock.close()
