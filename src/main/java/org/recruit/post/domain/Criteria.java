package org.recruit.post.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class Criteria {

  private int pageNum;
  private int amount;
  
  //private String type;
  private String keyword;
  private String searchCareer;
  private String searchEmptype;
  private String searchEdu;

  public Criteria() {
	  this(1,5);
  }

  public Criteria(int pageNum, int amount) {
    this.pageNum = pageNum;
    this.amount = amount;
  }
  
//  public String[] getTypeArr() {
//    return type == null? new String[] {}: type.split("");
//  }
}
