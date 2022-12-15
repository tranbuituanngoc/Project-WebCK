package database;

import java.util.ArrayList;

public interface DAO<T> {
    ArrayList<T> selectAll();

    ArrayList<T> selectById(T o);

    int insert  (T o);

    int insertAll(ArrayList<T> arrayList);

    int delete (T o);

    int deleteAll(ArrayList<T> arrayList);

    int update  (T o);

    int updateAll(ArrayList<T> arrayList);
}
