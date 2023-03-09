package org.recruit.post.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/post/*")
public class PostController {

	@GetMapping("/postInsert")
	public void register() {
		log.info("ddddd");
	}
}
