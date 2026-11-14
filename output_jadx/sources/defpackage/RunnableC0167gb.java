package defpackage;

/* renamed from: gb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0167gb implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Nb b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ String d;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ RunnableC0167gb(InterfaceC0192ha interfaceC0192ha, boolean z, String str, int i) {
        this.a = i;
        this.b = (Nb) interfaceC0192ha;
        this.c = z;
        this.d = str;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [Nb, ha] */
    /* JADX WARN: Type inference failed for: r0v2, types: [Nb, ha] */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                this.b.e(Boolean.valueOf(this.c), this.d);
                return;
            default:
                this.b.e(Boolean.valueOf(this.c), this.d);
                return;
        }
    }
}
