package ru.steamstore.main.json.csgo.json;

import java.util.List;

public interface CsGoRepository {

    List<CsGo> loadAll();

    void saveAll(List<CsGo> mines);

}