package defpackage;

import android.view.inputmethod.EditorInfo;

/* loaded from: classes.dex */
public abstract class U7 {
    public static void a(EditorInfo editorInfo, CharSequence charSequence) {
        editorInfo.setInitialSurroundingSubText(charSequence, 0);
    }
}
