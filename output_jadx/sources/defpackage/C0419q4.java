package defpackage;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.material.chip.Chip;

/* renamed from: q4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0419q4 extends ViewOutlineProvider {
    public final /* synthetic */ Chip a;

    public C0419q4(Chip chip) {
        this.a = chip;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        C0493t4 c0493t4 = this.a.e;
        if (c0493t4 != null) {
            c0493t4.getOutline(outline);
        } else {
            outline.setAlpha(0.0f);
        }
    }
}
