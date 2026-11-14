package defpackage;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import android.view.View;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public final class I5 implements H5, J5 {
    public final /* synthetic */ int a;
    public Object b;
    public int c;
    public int d;
    public Object e;
    public Cloneable f;

    public /* synthetic */ I5() {
        this.a = 0;
    }

    @Override // defpackage.H5
    public void a(Bundle bundle) {
        this.f = bundle;
    }

    public void b(yo yoVar, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if ((((C0335mo) it.next()).a.c() & 8) != 0) {
                ((View) this.e).setTranslationY(O0.c(this.d, 0, r3.a.b()));
                return;
            }
        }
    }

    @Override // defpackage.H5
    public void c(Uri uri) {
        this.e = uri;
    }

    @Override // defpackage.J5
    public int e() {
        return this.c;
    }

    @Override // defpackage.J5
    public ClipData g() {
        return (ClipData) this.b;
    }

    @Override // defpackage.H5
    public K5 i() {
        return new K5(new I5(this));
    }

    @Override // defpackage.J5
    public int m() {
        return this.d;
    }

    @Override // defpackage.J5
    public ContentInfo r() {
        return null;
    }

    @Override // defpackage.H5
    public void s(int i) {
        this.d = i;
    }

    public String toString() {
        String str;
        switch (this.a) {
            case 1:
                StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
                sb.append(((ClipData) this.b).getDescription());
                sb.append(", source=");
                int i = this.c;
                sb.append(i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? String.valueOf(i) : "SOURCE_PROCESS_TEXT" : "SOURCE_AUTOFILL" : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP");
                sb.append(", flags=");
                int i2 = this.d;
                sb.append((i2 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i2));
                Uri uri = (Uri) this.e;
                if (uri == null) {
                    str = "";
                } else {
                    str = ", hasLinkUri(" + uri.toString().length() + ")";
                }
                sb.append(str);
                sb.append(((Bundle) this.f) != null ? ", hasExtras" : "");
                sb.append("}");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Cloneable, int[]] */
    public I5(View view) {
        this.a = 2;
        this.f = new int[2];
        this.e = view;
    }

    public I5(I5 i5) {
        this.a = 1;
        ClipData clipData = (ClipData) i5.b;
        clipData.getClass();
        this.b = clipData;
        int i = i5.c;
        if (i < 0) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException("source is out of range of [0, 5] (too low)");
        }
        if (i <= 5) {
            this.c = i;
            int i2 = i5.d;
            if ((i2 & 1) == i2) {
                this.d = i2;
                this.e = (Uri) i5.e;
                this.f = (Bundle) i5.f;
                return;
            } else {
                throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i2) + ", but only 0x" + Integer.toHexString(1) + " are allowed");
            }
        }
        Locale locale2 = Locale.US;
        throw new IllegalArgumentException("source is out of range of [0, 5] (too high)");
    }
}
