
package com.Stream.service;
import java.util.List;
import java.util.Set;

import com.Stream.entity.Content;

/**
 * Created with IDEA
 * Created by ${jie.chen} on 2016/7/14.
 * 后台登录Service
 */
public interface ContentService {
    List<Content> findContentList();

    int insertSelective(Content content) ;
}
