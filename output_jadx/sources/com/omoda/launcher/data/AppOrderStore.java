package com.omoda.launcher.data;

import java.util.List;

/* loaded from: classes.dex */
public interface AppOrderStore {
    void clear();

    List<String> load();

    void save(List<String> list);
}
