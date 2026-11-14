package defpackage;

import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* renamed from: z3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0642z3 {
    public final boolean a;
    public final Object b;

    public C0642z3(T7 t7, boolean z) {
        this.b = t7;
        this.a = z;
    }

    public boolean a() {
        return this.a;
    }

    public boolean b(CharSequence charSequence, int i) {
        if (charSequence == null || i < 0 || charSequence.length() - i < 0) {
            throw new IllegalArgumentException();
        }
        if (((T7) this.b) == null) {
            return a();
        }
        char c = 2;
        for (int i2 = 0; i2 < i && c == 2; i2++) {
            byte directionality = Character.getDirectionality(charSequence.charAt(i2));
            C0642z3 c0642z3 = Gj.a;
            if (directionality != 0) {
                if (directionality != 1 && directionality != 2) {
                    switch (directionality) {
                        case 14:
                        case 15:
                            break;
                        case 16:
                        case 17:
                            break;
                        default:
                            c = 2;
                            break;
                    }
                }
                c = 0;
            }
            c = 1;
        }
        if (c == 0) {
            return true;
        }
        if (c != 1) {
            return a();
        }
        return false;
    }

    public C0642z3(BottomSheetBehavior bottomSheetBehavior, boolean z) {
        this.b = bottomSheetBehavior;
        this.a = z;
    }
}
