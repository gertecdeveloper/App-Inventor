// ICallbackListener.aidl
package wangpos.sdk4.base;

// Declare any non-default types here with import statements

interface ICallbackListener {
    /**
     * Demonstrates some basic types that you can use as parameters
     * and return values in AIDL.
     */
     int emvCoreCallback(int command, in byte[] data, out byte[] result, out int[] resultlen);

}
