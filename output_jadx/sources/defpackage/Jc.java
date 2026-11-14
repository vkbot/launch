package defpackage;

import android.os.LocaleList;

/* loaded from: classes.dex */
public final class Jc {
    public final LocaleList a;

    public Jc(LocaleList localeList) {
        this.a = localeList;
    }

    public final boolean equals(Object obj) {
        return this.a.equals(((Jc) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a.toString();
    }
}
