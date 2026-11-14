package defpackage;

import android.view.View;
import android.view.Window;

/* loaded from: classes.dex */
public final class zo extends AbstractC0145ff {
    public final Window a;

    public zo(Window window, Of of) {
        this.a = window;
    }

    @Override // defpackage.AbstractC0145ff
    public final void C(boolean z) {
        if (!z) {
            H(16);
            return;
        }
        Window window = this.a;
        window.clearFlags(134217728);
        window.addFlags(Integer.MIN_VALUE);
        View decorView = window.getDecorView();
        decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 16);
    }

    @Override // defpackage.AbstractC0145ff
    public final void D(boolean z) {
        if (!z) {
            H(8192);
            return;
        }
        Window window = this.a;
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        View decorView = window.getDecorView();
        decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 8192);
    }

    public final void H(int i) {
        View decorView = this.a.getDecorView();
        decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
    }
}
