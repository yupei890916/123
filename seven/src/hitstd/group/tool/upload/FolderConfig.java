package hitstd.group.tool.upload;

public class FolderConfig {
	public FolderConfig(){		
	}
	
	public String FilePath(){
	   //li's 
		String DBPath="D:\\1NAS-Li\\coding\\JavaLearning\\leelabTemplate\\WebContent\\assets\\images\\member\\";
	   //Yujia's 
		 //String DBPath="D:\\Java\\eclipse-workspace\\leelab\\WebContent\\assets\\images\\member\\";
	   return DBPath;		
	}
	public String WebsiteRelativeFilePath(){
		   //li's 
			String Path="assets/images/member/";
		   //Yujia's 
			 //String DBPath="D:\\Java\\eclipse-workspace\\leelab\\WebContent\\assets\\images\\member\\";
		   return Path;		
		}
}
