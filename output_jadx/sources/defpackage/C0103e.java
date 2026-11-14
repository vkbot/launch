package defpackage;

import android.graphics.RectF;
import java.util.Arrays;

/* renamed from: e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0103e implements InterfaceC0033b6 {
    public final float a;

    public C0103e(float f) {
        this.a = f;
    }

    @Override // defpackage.InterfaceC0033b6
    public final float a(RectF rectF) {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0103e) && this.a == ((C0103e) obj).a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.a)});
    }
}
