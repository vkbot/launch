package defpackage;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: cm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0075cm {
    public final View b;
    public final HashMap a = new HashMap();
    public final ArrayList c = new ArrayList();

    public C0075cm(View view) {
        this.b = view;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0075cm)) {
            return false;
        }
        C0075cm c0075cm = (C0075cm) obj;
        return this.b == c0075cm.b && this.a.equals(c0075cm.a);
    }

    public final int hashCode() {
        return this.a.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        String i = AbstractC0407pi.i(("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.b + "\n", "    values:");
        HashMap hashMap = this.a;
        for (String str : hashMap.keySet()) {
            i = i + "    " + str + ": " + hashMap.get(str) + "\n";
        }
        return i;
    }
}
