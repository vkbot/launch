package defpackage;

/* renamed from: r8, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0447r8 implements Qa {
    public final boolean a;

    public C0447r8(boolean z) {
        this.a = z;
    }

    @Override // defpackage.Qa
    public final boolean a() {
        return this.a;
    }

    @Override // defpackage.Qa
    public final Ce b() {
        return null;
    }

    public final String toString() {
        return AbstractC0407pi.k(new StringBuilder("Empty{"), this.a ? "Active" : "New", '}');
    }
}
