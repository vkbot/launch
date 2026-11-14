package defpackage;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.ViewGroup;
import androidx.appcompat.widget.SearchView;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes.dex */
public final class Ch implements TextWatcher {
    public final /* synthetic */ int a;
    public final /* synthetic */ ViewGroup b;

    public /* synthetic */ Ch(ViewGroup viewGroup, int i) {
        this.a = i;
        this.b = viewGroup;
    }

    private final void a(Editable editable) {
    }

    private final void b(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void c(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void d(int i, int i2, int i3, CharSequence charSequence) {
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        switch (this.a) {
            case 0:
                return;
            default:
                TextInputLayout textInputLayout = (TextInputLayout) this.b;
                textInputLayout.u(!textInputLayout.z0, false);
                if (textInputLayout.k) {
                    textInputLayout.n(editable);
                }
                if (textInputLayout.s) {
                    textInputLayout.v(editable);
                    return;
                }
                return;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        int i4 = this.a;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        switch (this.a) {
            case 0:
                SearchView searchView = (SearchView) this.b;
                Editable text = searchView.p.getText();
                searchView.V = text;
                boolean isEmpty = TextUtils.isEmpty(text);
                searchView.w(!isEmpty);
                int i4 = 8;
                if (searchView.U && !searchView.N && isEmpty) {
                    searchView.u.setVisibility(8);
                    i4 = 0;
                }
                searchView.w.setVisibility(i4);
                searchView.s();
                searchView.v();
                charSequence.toString();
                return;
            default:
                return;
        }
    }
}
