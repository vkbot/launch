package defpackage;

/* loaded from: classes.dex */
public final class Tb {
    public static Vb a(Wb wb) {
        AbstractC0348nb.r(wb, "state");
        int ordinal = wb.ordinal();
        if (ordinal == 1) {
            return Vb.ON_CREATE;
        }
        if (ordinal == 2) {
            return Vb.ON_START;
        }
        if (ordinal != 3) {
            return null;
        }
        return Vb.ON_RESUME;
    }
}
