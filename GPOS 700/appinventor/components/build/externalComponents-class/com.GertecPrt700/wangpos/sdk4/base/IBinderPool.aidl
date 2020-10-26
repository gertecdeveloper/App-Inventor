// IBinderPool.aidl
package wangpos.sdk4.base;

interface IBinderPool {
    IBinder queryBinder(in int binderCode);
}
