package defpackage;

import android.graphics.RectF;
import java.util.Arrays;

/* renamed from: z0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0639z0 implements InterfaceC0033b6 {
    public final InterfaceC0033b6 a;
    public final float b;

    public C0639z0(float f, InterfaceC0033b6 interfaceC0033b6) {
        while (interfaceC0033b6 instanceof C0639z0) {
            interfaceC0033b6 = ((C0639z0) interfaceC0033b6).a;
            f += ((C0639z0) interfaceC0033b6).b;
        }
        this.a = interfaceC0033b6;
        this.b = f;
    }

    @Override // defpackage.InterfaceC0033b6
    public final float a(RectF rectF) {
        return Math.max(0.0f, this.a.a(rectF) + this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0639z0)) {
            return false;
        }
        C0639z0 c0639z0 = (C0639z0) obj;
        return this.a.equals(c0639z0.a) && this.b == c0639z0.b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, Float.valueOf(this.b)});
    }
}
