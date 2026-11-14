package defpackage;

import android.graphics.Rect;
import android.view.View;

/* renamed from: lj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewOnLayoutChangeListenerC0304lj implements View.OnLayoutChangeListener {
    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        view.setClipBounds(new Rect(0, view.getHeight() * (-2), view.getWidth(), view.getHeight()));
    }
}
