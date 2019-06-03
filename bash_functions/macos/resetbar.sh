# reset Macbook Pro touch bar
resetbar() {
	pkill "Touch Bar agent"
	killall "ControlStrip"
}
