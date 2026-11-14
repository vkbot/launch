package defpackage;

import android.os.Handler;
import android.os.Message;

/* renamed from: k3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0262k3 implements Handler.Callback {
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            message.obj.getClass();
            throw new ClassCastException();
        }
        if (i != 1) {
            return false;
        }
        message.obj.getClass();
        throw new ClassCastException();
    }
}
