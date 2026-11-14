package defpackage;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;

/* renamed from: m8, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0319m8 extends C6 {
    public final TextView A;
    public final C0216i8 B;
    public boolean C = true;

    public C0319m8(TextView textView) {
        this.A = textView;
        this.B = new C0216i8(textView);
    }

    @Override // defpackage.C6
    public final void Q(boolean z) {
        if (z) {
            c0();
        }
    }

    @Override // defpackage.C6
    public final void R(boolean z) {
        this.C = z;
        c0();
        TextView textView = this.A;
        textView.setFilters(o(textView.getFilters()));
    }

    public final void c0() {
        TextView textView = this.A;
        TransformationMethod transformationMethod = textView.getTransformationMethod();
        if (this.C) {
            if (!(transformationMethod instanceof C0423q8) && !(transformationMethod instanceof PasswordTransformationMethod)) {
                transformationMethod = new C0423q8(transformationMethod);
            }
        } else if (transformationMethod instanceof C0423q8) {
            transformationMethod = ((C0423q8) transformationMethod).a;
        }
        textView.setTransformationMethod(transformationMethod);
    }

    @Override // defpackage.C6
    public final InputFilter[] o(InputFilter[] inputFilterArr) {
        if (!this.C) {
            SparseArray sparseArray = new SparseArray(1);
            for (int i = 0; i < inputFilterArr.length; i++) {
                InputFilter inputFilter = inputFilterArr[i];
                if (inputFilter instanceof C0216i8) {
                    sparseArray.put(i, inputFilter);
                }
            }
            if (sparseArray.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                if (sparseArray.indexOfKey(i3) < 0) {
                    inputFilterArr2[i2] = inputFilterArr[i3];
                    i2++;
                }
            }
            return inputFilterArr2;
        }
        int length2 = inputFilterArr.length;
        int i4 = 0;
        while (true) {
            C0216i8 c0216i8 = this.B;
            if (i4 >= length2) {
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                inputFilterArr3[length2] = c0216i8;
                return inputFilterArr3;
            }
            if (inputFilterArr[i4] == c0216i8) {
                return inputFilterArr;
            }
            i4++;
        }
    }
}
