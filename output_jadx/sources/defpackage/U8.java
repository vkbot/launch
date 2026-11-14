package defpackage;

import java.util.Random;

/* loaded from: classes.dex */
public final class U8 extends AbstractC0207i {
    public final T8 c = new ThreadLocal();

    @Override // defpackage.AbstractC0207i
    public final Random a() {
        Object obj = this.c.get();
        AbstractC0348nb.q(obj, "get(...)");
        return (Random) obj;
    }
}
