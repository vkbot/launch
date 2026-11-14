package defpackage;

import android.view.accessibility.AccessibilityManager;

/* renamed from: w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0563w {
    public static boolean a(AccessibilityManager accessibilityManager, InterfaceC0588x interfaceC0588x) {
        return accessibilityManager.addTouchExplorationStateChangeListener(new AccessibilityManagerTouchExplorationStateChangeListenerC0613y(interfaceC0588x));
    }

    public static boolean b(AccessibilityManager accessibilityManager, InterfaceC0588x interfaceC0588x) {
        return accessibilityManager.removeTouchExplorationStateChangeListener(new AccessibilityManagerTouchExplorationStateChangeListenerC0613y(interfaceC0588x));
    }
}
