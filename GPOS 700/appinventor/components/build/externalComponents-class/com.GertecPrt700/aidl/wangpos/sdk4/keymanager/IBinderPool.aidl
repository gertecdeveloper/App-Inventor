// IBinderPool.aidl
package wangpos.sdk4.keymanager;

interface IBinderPool {
    IBinder queryBinder(in int binderCode);
}
