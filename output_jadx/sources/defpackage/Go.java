package defpackage;

/* loaded from: classes.dex */
public final class Go extends Nb implements InterfaceC0089da {
    public final /* synthetic */ int b;
    public final /* synthetic */ String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Go(String str, int i) {
        super(1);
        this.b = i;
        this.c = str;
    }

    @Override // defpackage.InterfaceC0089da
    public final Object h(Object obj) {
        switch (this.b) {
            case 0:
                C0092dd c0092dd = (C0092dd) obj;
                AbstractC0348nb.r(c0092dd, "it");
                return Boolean.valueOf(AbstractC0348nb.g(c0092dd.a, this.c));
            case 1:
                C0092dd c0092dd2 = (C0092dd) obj;
                AbstractC0348nb.r(c0092dd2, "it");
                return Boolean.valueOf(AbstractC0348nb.g(c0092dd2.a, this.c));
            default:
                C0092dd c0092dd3 = (C0092dd) obj;
                AbstractC0348nb.r(c0092dd3, "it");
                return Boolean.valueOf(AbstractC0348nb.g(c0092dd3.a, this.c));
        }
    }
}
