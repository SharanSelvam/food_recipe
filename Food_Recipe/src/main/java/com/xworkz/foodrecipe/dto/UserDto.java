package com.xworkz.foodrecipe.dto;

import com.xworkz.foodrecipe.constant.FoodType;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Data
@Entity
@NamedQueries({
        @NamedQuery(name = "getUserByEmailIdAndPassword",query = "select dto from UserDto dto where dto.emailId=:emailId and dto.password=:password"),
        @NamedQuery(name="getAll",query = "from UserDto userdto"),
        @NamedQuery(name = "getUserbyloginId",query = "from UserDto dto where dto.emailId=:emailId"),
        @NamedQuery(name="getUserById",query = "from UserDto dto where dto.userId=:userId"),
        @NamedQuery(name="getEmailId",query = "from UserDto dto where dto.emailId=:emailId"),
        @NamedQuery(name="getContact",query = "from UserDto dto where dto.contactNumber=:contactNumber")

})


public class UserDto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int userId;

    @NotNull(message = "FIRST NAME MUST BE THERE")
    @Size(max = 8,min = 3,message = "FIRST NAME IS INVALID")
    private String firstName;

    @NotNull(message = "LAST NAME MUST BE THERE")
    @Size(max = 2,min = 1,message = "LAST NAME IS INVALID")
    private String lastName;

    @NotNull(message = "MAIL ID MUST BE THERE")

    private String emailId;

    @NotNull(message = "CONTACT NUMBER IS INVALID")
    private long contactNumber;

    @NotNull(message = "ALTERNATIVE NUMBER IS INVALID")
    private long alternativeNumber;

    @NotNull(message = "FOODTYPE NOT SELECTED")
    @Enumerated(EnumType.STRING)
    private FoodType foodType;

    @NotNull(message = "ADDRESS MUST BE THERE")
    @Size(max=20,min=5,message = "ADDRESS IS INVALID")
    private String address;

    @NotNull(message = "PASSWORD MUST BE THERE")
    @Size(max=8,min = 4,message = "PASSWORD IS INVALID")
    private String password;
    @JoinColumn(name ="auditId")
    @OneToOne(cascade = CascadeType.ALL)
    private AuditDto auditDto;
}
