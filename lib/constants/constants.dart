const String PACKAGENAME = 'dw_system';

//URI
const String ID_BASE_URI = '';



/////////////////////////////////////
/// real page
////////////////////////////////////
const String PAGE_LOGIN_PAGE = "LOGIN"; //로그인




class vDashboard {
  static String _ID_API_WIFI = '/api/v1/wifi';


  //wifi
  static String vDashboard_wifi_list() {
    return ID_BASE_URI + _ID_API_WIFI;
  }

}
