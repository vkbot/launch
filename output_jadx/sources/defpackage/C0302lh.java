package defpackage;

/* renamed from: lh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0302lh extends AbstractC0348nb {
    @Override // defpackage.AbstractC0348nb
    public final void C(C0122ei c0122ei, float f, float f2) {
        c0122ei.d(f2 * f, 180.0f, 90.0f);
        float f3 = f2 * 2.0f * f;
        C0019ai c0019ai = new C0019ai(0.0f, 0.0f, f3, f3);
        c0019ai.f = 180.0f;
        c0019ai.g = 90.0f;
        c0122ei.f.add(c0019ai);
        Yh yh = new Yh(c0019ai);
        c0122ei.a(180.0f);
        c0122ei.g.add(yh);
        c0122ei.d = 270.0f;
        float f4 = (0.0f + f3) * 0.5f;
        float f5 = (f3 - 0.0f) / 2.0f;
        double d = 270.0f;
        c0122ei.b = (((float) Math.cos(Math.toRadians(d))) * f5) + f4;
        c0122ei.c = (f5 * ((float) Math.sin(Math.toRadians(d)))) + f4;
    }
}
