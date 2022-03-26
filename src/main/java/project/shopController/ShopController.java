package project.shopController;

import java.util.ArrayList;
import java.util.List;

import project.shopModel.ProductDTO;

public class ShopController {

	public List<String> getUpperCode(List<ProductDTO> dto){//product테이블 code에 상위카테고리(outer, top...)만 list로 뽑음
		List<String> upperCode = new ArrayList<>();
		String[] code = new String[3];
		
		for(int i = 0; i < dto.size(); i++) {
			code = dto.get(i).getCode().split("_");
			upperCode.add(code[0]);
		}

		return upperCode;
	}
	
	public List<String> getSubCode(List<ProductDTO> dto){//product테이블 code에 하위카테고리(jk, ct...)만 list로 뽑음
		List<String> subCode = new ArrayList<>();
		String[] code = new String[3];
		
		for(int i = 0; i < dto.size(); i++) {
			code = dto.get(i).getCode().split("_");
			subCode.add(code[1]);
		}

		return subCode;
	}
	
	public List<String> getNumCode(List<ProductDTO> dto){////product테이블 code에 숫자만 list로 뽑음
		List<String> numCode = new ArrayList<>();
		String[] code = new String[3];
		
		for(int i = 0; i < dto.size(); i++) {
			code = dto.get(i).getCode().split("_");
			numCode.add(code[2]);
		}

		return numCode;
	}
}
