package defpackage;

import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;

/* loaded from: classes.dex */
public final class Bo extends AbstractC0145ff {
    public final WindowInsetsController a;
    public Window b;

    public Bo(WindowInsetsController windowInsetsController, Of of) {
        this.a = windowInsetsController;
    }

    @Override // defpackage.AbstractC0145ff
    public final void C(boolean z) {
        Window window = this.b;
        if (z) {
            if (window != null) {
                View decorView = window.getDecorView();
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 16);
            }
            this.a.setSystemBarsAppearance(16, 16);
            return;
        }
        if (window != null) {
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-17));
        }
        this.a.setSystemBarsAppearance(0, 16);
    }

    @Override // defpackage.AbstractC0145ff
    public final void D(boolean z) {
        Window window = this.b;
        if (z) {
            if (window != null) {
                View decorView = window.getDecorView();
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 8192);
            }
            this.a.setSystemBarsAppearance(8, 8);
            return;
        }
        if (window != null) {
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-8193));
        }
        this.a.setSystemBarsAppearance(0, 8);
    }
}
