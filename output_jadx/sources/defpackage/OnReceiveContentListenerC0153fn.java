package defpackage;

import android.view.ContentInfo;
import android.view.OnReceiveContentListener;
import android.view.View;
import java.util.Objects;

/* renamed from: fn, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class OnReceiveContentListenerC0153fn implements OnReceiveContentListener {
    public final Se a;

    public OnReceiveContentListenerC0153fn(Se se) {
        this.a = se;
    }

    public final ContentInfo onReceiveContent(View view, ContentInfo contentInfo) {
        K5 k5 = new K5(new L(contentInfo));
        K5 a = ((Tj) this.a).a(view, k5);
        if (a == null) {
            return null;
        }
        if (a == k5) {
            return contentInfo;
        }
        ContentInfo r = a.a.r();
        Objects.requireNonNull(r);
        return AbstractC0592x3.g(r);
    }
}
