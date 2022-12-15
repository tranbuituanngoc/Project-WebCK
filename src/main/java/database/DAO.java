package database;

import model.User;

import java.util.ArrayList;

public interface DAO<T> {
    ArrayList<T> selectAll();

    User selectById(T o);

    int insert  (T o);

    int insertAll(ArrayList<T> arrayList);

    int delete (T o);

    int deleteAll(ArrayList<T> arrayList);

    int update  (T o);

    int updateAll(ArrayList<T> arrayList);
}
