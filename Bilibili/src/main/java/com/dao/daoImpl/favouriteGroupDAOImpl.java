package com.dao.daoImpl;

import com.dao.favouriteGroupDAO;
import com.pojo.FavoriteGroup;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * Created by frank_xiang on 2016/7/5.
 */
public class favouriteGroupDAOImpl extends HibernateDaoSupport implements favouriteGroupDAO {
    @Override
    public void createFavouriteGroup(FavoriteGroup favoriteGroup) {
        getHibernateTemplate().save(favoriteGroup);
        getHibernateTemplate().flush();
    }

    @Override
    public void deleteFavouriteGroup(int groupId) {
        getHibernateTemplate().delete(getHibernateTemplate().load(FavoriteGroup.class,groupId));
        getHibernateTemplate().flush();
    }

    @Override
    public void updateFavouriteGroup(FavoriteGroup favoriteGroup) {
        getHibernateTemplate().merge(favoriteGroup);
        getHibernateTemplate().flush();
    }

    @Override
    public FavoriteGroup findFavouriteGroupById(int groupId) {
        return getHibernateTemplate().load(FavoriteGroup.class,groupId);
    }
}
