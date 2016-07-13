package com.util;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSDBFile;
import com.mongodb.gridfs.GridFSInputFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * Created by frank_xiang on 2016/7/11.
 */
public class mongoUtil {
    private static GridFS gridFS = null;
    public static void StoreImage(String mediaPicPath,int videoId) throws IOException {
        Mongo mongo=new Mongo("localhost" , 27017);
        //连接数据库
        DB db=mongo.getDB("test");
        //文件操作是在DB的基础上实现的，与表和文档没有关系

        gridFS=new GridFS(db);

        File readFile=new File(mediaPicPath);
        GridFSInputFile mongofile=gridFS.createFile(readFile);
        //可以再添加属性
        mongofile.put("path",mediaPicPath);
        mongofile.put("_id","videoImage_"+String.valueOf(videoId));
        //保存
        mongofile.save();
    }
    public static String GetVideoImage(int videoId) throws IOException {
        Mongo mongo=new Mongo("localhost" , 27017);
        //连接数据库
        DB db=mongo.getDB("test");
        //文件操作是在DB的基础上实现的，与表和文档没有关系

        gridFS=new GridFS(db);
        DBObject query  = new BasicDBObject("_id", "video_"+String.valueOf(videoId));
        GridFSDBFile gridFSDBFile = gridFS.findOne(query);
        String imagePath = "videos/images/video_"+String.valueOf(videoId)+"_out.jpg";
        gridFSDBFile.writeTo(new FileOutputStream(imagePath));
        return imagePath;
    }
}
