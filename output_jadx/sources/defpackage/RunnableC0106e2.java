package defpackage;

import android.graphics.Typeface;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* renamed from: e2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0106e2 implements Runnable {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ int b;
    public final /* synthetic */ View c;
    public final /* synthetic */ Object d;

    public RunnableC0106e2(TextView textView, Typeface typeface, int i) {
        this.c = textView;
        this.d = typeface;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                ((TextView) this.c).setTypeface((Typeface) this.d, this.b);
                return;
            default:
                ((BottomSheetBehavior) this.d).E(this.c, this.b, false);
                return;
        }
    }

    public RunnableC0106e2(BottomSheetBehavior bottomSheetBehavior, View view, int i) {
        this.d = bottomSheetBehavior;
        this.c = view;
        this.b = i;
    }
}
