package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.InterfaceC0170ge;
import defpackage.Ld;

/* loaded from: classes.dex */
public class NavigationMenuView extends RecyclerView implements InterfaceC0170ge {
    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setLayoutManager(new LinearLayoutManager(1));
    }

    @Override // defpackage.InterfaceC0170ge
    public final void b(Ld ld) {
    }

    public int getWindowAnimations() {
        return 0;
    }
}
