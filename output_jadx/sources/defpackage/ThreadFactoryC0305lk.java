package defpackage;

import java.util.concurrent.ThreadFactory;

/* renamed from: lk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class ThreadFactoryC0305lk implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "TimeKeeper");
    }
}
