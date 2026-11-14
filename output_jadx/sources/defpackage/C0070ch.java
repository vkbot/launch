package defpackage;

import android.content.res.Resources;

/* renamed from: ch, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0070ch {
    public final Resources a;
    public final Resources.Theme b;

    public C0070ch(Resources resources, Resources.Theme theme) {
        this.a = resources;
        this.b = theme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0070ch.class != obj.getClass()) {
            return false;
        }
        C0070ch c0070ch = (C0070ch) obj;
        return this.a.equals(c0070ch.a) && He.a(this.b, c0070ch.b);
    }

    public final int hashCode() {
        return He.b(this.a, this.b);
    }
}
