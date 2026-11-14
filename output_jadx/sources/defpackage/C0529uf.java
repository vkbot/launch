package defpackage;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

/* renamed from: uf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0529uf extends AbstractC0207i {
    @Override // defpackage.AbstractC0207i
    public final Random a() {
        ThreadLocalRandom current = ThreadLocalRandom.current();
        AbstractC0348nb.q(current, "current(...)");
        return current;
    }
}
