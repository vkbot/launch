package defpackage;

import android.view.accessibility.AccessibilityEvent;

/* renamed from: v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0538v {
    public static int a(AccessibilityEvent accessibilityEvent) {
        return accessibilityEvent.getContentChangeTypes();
    }

    public static void b(AccessibilityEvent accessibilityEvent, int i) {
        accessibilityEvent.setContentChangeTypes(i);
    }
}
