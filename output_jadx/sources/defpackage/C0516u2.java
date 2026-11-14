package defpackage;

import com.omoda.launcher.data.AppInfo;

/* renamed from: u2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0516u2 extends AbstractC0566w2 {
    public final AppInfo a;

    public C0516u2(AppInfo appInfo) {
        AbstractC0348nb.r(appInfo, "app");
        this.a = appInfo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0516u2) && AbstractC0348nb.g(this.a, ((C0516u2) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Installed(app=" + this.a + ')';
    }
}
