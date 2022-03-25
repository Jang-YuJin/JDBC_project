package project.shopController;

import java.util.ArrayList;
import java.util.List;

import project.shopModel.ProductDTO;

public class ShopController {

	public List<String> getUpperCode(List<ProductDTO> dto){
		List<String> upperCode = new ArrayList<>();
		String[] code = new String[3];
		
		for(int i = 0; i < dto.size(); i++) {
			code = dto.get(i).getCode().split("_");
			upperCode.add(code[0]);
		}

		return upperCode;
	}
	
	public List<String> getSubCode(List<ProductDTO> dto){
		List<String> subCode = new ArrayList<>();
		String[] code = new String[3];
		
		for(int i = 0; i < dto.size(); i++) {
			code = dto.get(i).getCode().split("_");
			subCode.add(code[1]);
		}

		return subCode;
	}
	
	public List<String> getNumCode(List<ProductDTO> dto){
		List<String> numCode = new ArrayList<>();
		String[] code = new String[3];
		
		for(int i = 0; i < dto.size(); i++) {
			code = dto.get(i).getCode().split("_");
			numCode.add(code[2]);
		}

		return numCode;
	}
}
