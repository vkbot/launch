package defpackage;

/* loaded from: classes.dex */
public final class Ri extends Nb implements InterfaceC0192ha {
    public final /* synthetic */ char[] b;
    public final /* synthetic */ boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ri(char[] cArr, boolean z) {
        super(2);
        this.b = cArr;
        this.c = z;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        CharSequence charSequence = (CharSequence) obj;
        int intValue = ((Number) obj2).intValue();
        AbstractC0348nb.r(charSequence, "$this$$receiver");
        int L = Si.L(charSequence, this.b, intValue, this.c);
        if (L < 0) {
            return null;
        }
        return new C0016af(Integer.valueOf(L), 1);
    }
}
