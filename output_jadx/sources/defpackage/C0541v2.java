package defpackage;

import android.graphics.Bitmap;
import com.omoda.launcher.data.RemoteApp;

/* renamed from: v2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0541v2 extends AbstractC0566w2 {
    public final RemoteApp a;
    public Bitmap b;

    public C0541v2(RemoteApp remoteApp) {
        AbstractC0348nb.r(remoteApp, "app");
        this.a = remoteApp;
        this.b = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0541v2)) {
            return false;
        }
        C0541v2 c0541v2 = (C0541v2) obj;
        return AbstractC0348nb.g(this.a, c0541v2.a) && AbstractC0348nb.g(this.b, c0541v2.b);
    }

    public final int hashCode() {
        int hashCode = this.a.hashCode() * 31;
        Bitmap bitmap = this.b;
        return hashCode + (bitmap == null ? 0 : bitmap.hashCode());
    }

    public final String toString() {
        return "Remote(app=" + this.a + ", icon=" + this.b + ')';
    }
}
