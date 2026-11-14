package defpackage;

/* renamed from: hh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0199hh extends AbstractC0236j3 {
    public AbstractC0199hh(S5 s5) {
        super(s5);
        if (s5 != null && s5.i() != C0497t8.a) {
            throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext");
        }
    }

    @Override // defpackage.S5
    public final InterfaceC0110e6 i() {
        return C0497t8.a;
    }
}
