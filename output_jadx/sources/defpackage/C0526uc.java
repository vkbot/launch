package defpackage;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.SearchView;

/* renamed from: uc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0526uc implements AdapterView.OnItemSelectedListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0526uc(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    private final void a(AdapterView adapterView) {
    }

    private final void b(AdapterView adapterView) {
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        K7 k7;
        switch (this.a) {
            case 0:
                if (i == -1 || (k7 = ((Ac) this.b).c) == null) {
                    return;
                }
                k7.setListSelectionHidden(false);
                return;
            default:
                ((SearchView) this.b).p(i);
                return;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i = this.a;
    }
}
