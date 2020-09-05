%hook CAMCaptureCapabilities
-(bool)isBackIrisSupported {
	return YES;
}
-(bool)isFrontIrisSupported {
	return YES;
}
-(bool)isBackBurstSupported {
	return YES;
}
-(bool)isFrontBurstSupported {
	return YES;
}
%end
%hook AVCaptureDeviceFormat
-(bool)isIrisSupported {
	return YES;
}
%end

