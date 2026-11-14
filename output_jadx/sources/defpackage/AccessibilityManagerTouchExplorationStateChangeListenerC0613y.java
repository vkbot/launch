package defpackage;

import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import java.util.WeakHashMap;

/* renamed from: y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class AccessibilityManagerTouchExplorationStateChangeListenerC0613y implements AccessibilityManager.TouchExplorationStateChangeListener {
    public final InterfaceC0588x a;

    public AccessibilityManagerTouchExplorationStateChangeListenerC0613y(InterfaceC0588x interfaceC0588x) {
        this.a = interfaceC0588x;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccessibilityManagerTouchExplorationStateChangeListenerC0613y) {
            return this.a.equals(((AccessibilityManagerTouchExplorationStateChangeListenerC0613y) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z) {
        P7 p7 = (P7) ((O7) this.a).a;
        AutoCompleteTextView autoCompleteTextView = p7.h;
        if (autoCompleteTextView == null || C6.x(autoCompleteTextView)) {
            return;
        }
        int i = z ? 2 : 1;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        Rm.s(p7.d, i);
    }
}
