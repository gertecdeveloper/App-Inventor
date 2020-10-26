// ICallbackListener.aidl
package wangpos.sdk4.base;

// Declare any non-default types here with import statements

interface IDecodeCallback {
    /**
     * Demonstrates some basic types that you can use as parameters
     * and return values in AIDL.
     */
    int resultCallback(int code,in String barcodeData,in byte codeId,in byte aimId,in byte aimModifier,in int length,in byte[] byteBarcodeData);
    /**
     * Demonstrates some basic types that you can use as parameters
     * and return values in AIDL.
     */
    int CommonCallback(int code);
}
