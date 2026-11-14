package defpackage;

import android.view.ViewGroup;
import android.view.WindowId;

/* renamed from: fo, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0154fo {
    public final WindowId a;

    public C0154fo(ViewGroup viewGroup) {
        this.a = viewGroup.getWindowId();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C0154fo) && ((C0154fo) obj).a.equals(this.a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
