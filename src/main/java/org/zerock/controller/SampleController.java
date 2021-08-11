package org.zerock.controller;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/sample/*")
@Log4j
public class SampleController {
	
	@GetMapping("/all")
	public void doAll() {
		
		log.info("do all can access everybody");
	}
	
	@GetMapping("/member")
	public void doMember() {
		
		log.info("logined member");
	}
	
	@GetMapping("/admin")
	public void doAdmin() {
		
		log.info("admin only");
	}
	
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_MEMBER')")  // @PreAuthorize, @PostAuthorize : 표현식을 사용
	@GetMapping("/annoMember")
	public void doMember2() {
		
		log.info("logined annoation member");
	}
	
	@Secured({"ROLE_ADMIN"})  // @Securerd : 'ROLE_ADMIN' 과 같은 문자열 이용, 여러 개 사용시 배열로 표현
	@GetMapping("/annoAdmin")
	public void doAdmin2() {
		
		log.info("admin annotaion only");
	}
}
