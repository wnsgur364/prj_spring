package com.mycompany.app.infra.modules.member;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.app.infra.common.constants.Constants;
import com.mycompany.app.infra.common.util.UtilDateTime;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;
	
	@Override
	public int selectOneCount(MemberVo vo) {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Member> selectList(MemberVo vo) { 
		return dao.selectList(vo); 
	}
	
	@Override
	public Member selectOne(MemberVo vo) { 
		return dao.selectOne(vo); 
	}

	@Override
	public Member loginProc(MemberVo vo) {
		return dao.loginProc(vo);
	}
	
	@Override
	public Member loginXdmProc(MemberVo vo) {
		return dao.loginXdmProc(vo);
	}
	
	@Override
	public int update(Member dto) throws Exception {
		
		uploadFiles(dto.getUploadImgProfile(), dto, "memberUploaded", dto.getUploadImgProfileType(), dto.getUploadImgProfileMaxNumber());
		uploadFiles(dto.getUploadImg(), dto, "memberUploaded", dto.getUploadImgType(), dto.getUploadImgMaxNumber());
		uploadFiles(dto.getUploadFile(), dto, "memberUploaded", dto.getUploadFileType(), dto.getUploadFileMaxNumber());

		return dao.update(dto);
	}
	
	@Override
	public int insert(Member dto) {
		return dao.insert(dto);
	}

	@Override
	public int uelete(Member dto) {
		return dao.uelete(dto);
	}

	@Override
	public int selectOneIdCheck(MemberVo vo) {
		return dao.selectOneIdCheck(vo); 
	}
	
	@Override
	public void uploadFiles(MultipartFile[] multipartFiles, Member dto, String tableName, int type, int maxNumber) throws Exception {
		
		for(int i=0; i<multipartFiles.length; i++) {
    	
			if(!multipartFiles[i].isEmpty()) {
				
				String className = dto.getClass().getSimpleName().toString().toLowerCase();		
				String fileName = multipartFiles[i].getOriginalFilename();
				String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
				String uuid = UUID.randomUUID().toString();
				String uuidFileName = uuid + "." + ext;
				String pathModule = className;
				String nowString = UtilDateTime.nowString();
				String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
				String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
				String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
				
				File uploadPath = new File(path);
				
				if (!uploadPath.exists()) {
					uploadPath.mkdirs();
				} else {
					// by pass
				}
				  
				multipartFiles[i].transferTo(new File(path + uuidFileName));
				
				dto.setPath(pathForView);
				dto.setOriginalName(fileName);
				dto.setUuidName(uuidFileName);
				dto.setExt(ext);
				dto.setSize(multipartFiles[i].getSize());
				
				dto.setTableName(tableName);
				dto.setType(type);
//				dto.setDefaultNy();
				dto.setSort(maxNumber + i);
				dto.setPseq(dto.getSeq());

				dao.insertUploaded(dto);
    		}
		}
	}

}
