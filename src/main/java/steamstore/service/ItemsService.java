package steamstore.service;

import steamstore.json.model.Item;
import steamstore.json.model.CsGoItem;
import steamstore.json.model.DotaItem;
import steamstore.json.model.enums.CsRarity;
import steamstore.json.model.enums.DotaRarity;

import java.util.List;

public interface ItemsService {
    List<Item> getAllItems();
    List<DotaItem> getAllDotaItems();
    List<CsGoItem> getAllCsGoItems();

    DotaItem getDotaItemById(long id);
    CsGoItem getCsItemById(long id);

    DotaItem addDotaItem(String name, String quality, double cost, DotaRarity rarity, String hero, String itemType);
    CsGoItem addCsItem(String name, String quality, double cost, CsRarity rarity, String weapon, String itemCategory, String itemType, double floatValue);

    boolean removeDotaItem(long id);
    boolean removeCsItem(long id);


    public List<DotaItem> filterDotaItem(String name, double minCost, double maxCost, String quality, DotaRarity rarity, String hero, String itemType);
    public List<CsGoItem> filterCsItem(String name, double minCost, double maxCost, String quality, CsRarity rarity, String weapon, String itemCategory, String itemType, double floatValue);

    public List<DotaItem> findDotaItemByName(String name);
    public List<CsGoItem> findCsItemByName(String name);


    void saveAllItems();
}
