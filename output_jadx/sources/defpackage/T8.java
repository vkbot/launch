package defpackage;

import java.util.Random;

/* loaded from: classes.dex */
public final class T8 extends ThreadLocal {
    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        return new Random();
    }
}
