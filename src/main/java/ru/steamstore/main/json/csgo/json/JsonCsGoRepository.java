package ru.steamstore.main.json.csgo.json;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class JsonCsGoRepository implements CsGoRepository {

    private final File file;
    private final ObjectMapper objectMapper;

    public JsonCsGoRepository(File file, ObjectMapper objectMapper) {
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        if (file.length() == 0) {
            try {
                List<String> s1 = new ArrayList<>();
                objectMapper.writeValue(file, s1);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        this.file = file;
        this.objectMapper = objectMapper;
    }

    @SuppressWarnings("Duplicates")
    @Override
    public List<CsGo> loadAll() {
        if (file.length() == 0) {
            return Collections.emptyList();
        }
        try {
            return objectMapper.readValue(file, new TypeReference<List<CsGo>>() {
            });
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void saveAll(List<CsGo> mines) {
        try {
            objectMapper.writeValue(file, mines);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}