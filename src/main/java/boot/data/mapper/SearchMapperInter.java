package boot.data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SearchMapperInter {

	//검색기능
	public List<String> sangSearch(String search);
}
