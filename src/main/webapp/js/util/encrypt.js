var pub_key = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDHOedxRc+ur0gy+jyJachH6OhCjbbWij2LygjH1ePb4d0xGISIaCSpQ+xVEPWLM2lC8Zdz6yuaPM069hDIiMvZs2XZU9E95G9tnVvCc1HReGiHm/5JfV9KiNz8NWzP4uSF5LE000XZsZ9EmLyfLgpe0Kcs0sb73QvT1WGA92FudQIDAQAB";
var pri_key_salt = "10001";
//rsa encrypt
function RsaEncrypt(str) {
	var rsa = new RSAKey();
	rsa.setPublic(pub_key, pri_key_salt);
	return rsa.encrypt(str);
};
