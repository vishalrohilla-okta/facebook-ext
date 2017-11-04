package com.okta.social.client;

import java.util.List;

import com.restfb.BinaryAttachment;
import com.restfb.Connection;
import com.restfb.JsonMapper;
import com.restfb.Parameter;
import com.restfb.WebRequestor;
import com.restfb.batch.BatchRequest;
import com.restfb.batch.BatchResponse;
import com.restfb.exception.devicetoken.FacebookDeviceTokenCodeExpiredException;
import com.restfb.exception.devicetoken.FacebookDeviceTokenDeclinedException;
import com.restfb.exception.devicetoken.FacebookDeviceTokenPendingException;
import com.restfb.exception.devicetoken.FacebookDeviceTokenSlowdownException;
import com.restfb.scope.ScopeBuilder;
import com.restfb.types.DeviceCode;

public class FacebookClient implements com.restfb.FacebookClient {

	public <T> T fetchObject(String object, Class<T> objectType, Parameter... parameters) {
		// TODO Auto-generated method stub
		return null;
	}

	public <T> T fetchObjects(List<String> ids, Class<T> objectType, Parameter... parameters) {
		// TODO Auto-generated method stub
		return null;
	}

	public <T> Connection<T> fetchConnection(String connection, Class<T> connectionType, Parameter... parameters) {
		// TODO Auto-generated method stub
		return null;
	}

	public <T> Connection<T> fetchConnectionPage(String connectionPageUrl, Class<T> connectionType) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<BatchResponse> executeBatch(BatchRequest... batchRequests) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<BatchResponse> executeBatch(List<BatchRequest> batchRequests) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<BatchResponse> executeBatch(List<BatchRequest> batchRequests,
			List<BinaryAttachment> binaryAttachments) {
		// TODO Auto-generated method stub
		return null;
	}

	public <T> T publish(String connection, Class<T> objectType, Parameter... parameters) {
		// TODO Auto-generated method stub
		return null;
	}

	public <T> T publish(String connection, Class<T> objectType, List<BinaryAttachment> binaryAttachments,
			Parameter... parameters) {
		// TODO Auto-generated method stub
		return null;
	}

	public <T> T publish(String connection, Class<T> objectType, BinaryAttachment binaryAttachment,
			Parameter... parameters) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean deleteObject(String object, Parameter... parameters) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<AccessToken> convertSessionKeysToAccessTokens(String appId, String secretKey, String... sessionKeys) {
		// TODO Auto-generated method stub
		return null;
	}

	public AccessToken obtainUserAccessToken(String appId, String appSecret, String redirectUri,
			String verificationCode) {
		// TODO Auto-generated method stub
		return null;
	}

	public AccessToken obtainAppAccessToken(String appId, String appSecret) {
		// TODO Auto-generated method stub
		return null;
	}

	public AccessToken obtainExtendedAccessToken(String appId, String appSecret, String accessToken) {
		// TODO Auto-generated method stub
		return null;
	}

	public String obtainAppSecretProof(String accessToken, String appSecret) {
		// TODO Auto-generated method stub
		return null;
	}

	public AccessToken obtainExtendedAccessToken(String appId, String appSecret) {
		// TODO Auto-generated method stub
		return null;
	}

	public <T> T parseSignedRequest(String signedRequest, String appSecret, Class<T> objectType) {
		// TODO Auto-generated method stub
		return null;
	}

	public DeviceCode fetchDeviceCode(String appId, ScopeBuilder scope) {
		// TODO Auto-generated method stub
		return null;
	}

	public DeviceCode fetchDeviceCode(ScopeBuilder scope) {
		// TODO Auto-generated method stub
		return null;
	}

	public AccessToken obtainDeviceAccessToken(String appId, String code)
			throws FacebookDeviceTokenCodeExpiredException, FacebookDeviceTokenPendingException,
			FacebookDeviceTokenDeclinedException, FacebookDeviceTokenSlowdownException {
		// TODO Auto-generated method stub
		return null;
	}

	public AccessToken obtainDeviceAccessToken(String code)
			throws FacebookDeviceTokenCodeExpiredException, FacebookDeviceTokenPendingException,
			FacebookDeviceTokenDeclinedException, FacebookDeviceTokenSlowdownException {
		// TODO Auto-generated method stub
		return null;
	}

	public DebugTokenInfo debugToken(String inputToken) {
		// TODO Auto-generated method stub
		return null;
	}

	public JsonMapper getJsonMapper() {
		// TODO Auto-generated method stub
		return null;
	}

	public WebRequestor getWebRequestor() {
		// TODO Auto-generated method stub
		return null;
	}

	public String getLogoutUrl(String next) {
		// TODO Auto-generated method stub
		return null;
	}

	public String getLoginDialogUrl(String appId, String redirectUri, ScopeBuilder scope,
			Parameter... additionalParameters) {
		// TODO Auto-generated method stub
		return null;
	}

}
