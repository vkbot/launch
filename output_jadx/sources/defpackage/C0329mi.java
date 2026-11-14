package defpackage;

import android.os.Handler;
import android.os.Message;

/* renamed from: mi, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0329mi implements Handler.Callback {
    public final /* synthetic */ L a;

    public C0329mi(L l) {
        this.a = l;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            return false;
        }
        L l = this.a;
        if (message.obj != null) {
            throw new ClassCastException();
        }
        synchronized (l.b) {
            throw null;
        }
    }
}
