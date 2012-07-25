package pdn.sci.cs.entity;

import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="child_picture")
@GenericGenerator(name = "uuid-strategy", strategy = "uuid.hex")
public class ChildPicture extends BaseEntity  implements java.io.Serializable {

	public static final String CHILD_ID = "child.id";
	private static final long serialVersionUID = 1L;
    private Child child;
    private String fileName;
    private String fileType;
    private int fileSize;
    private byte[] fileContent;
    private String comment;

    public ChildPicture() {
    }

	
    public ChildPicture(String id, Child child, String fileName, String fileType, int fileSize, byte[] fileContent) {
        this.id = id;
        this.child = child;
        this.fileName = fileName;
        this.fileType = fileType;
        this.fileSize = fileSize;
        this.fileContent = fileContent;
    }
    public ChildPicture(String id, Child child, String fileName, String fileType, int fileSize, byte[] fileContent, Integer sortOrder, String insertUserId, String updateUserId, Calendar insertDatetime, Calendar updateDatetime) {
       this.id = id;
       this.child = child;
       this.fileName = fileName;
       this.fileType = fileType;
       this.fileSize = fileSize;
       this.fileContent = fileContent;
       this.sortOrder = sortOrder;
       this.insertUserId = insertUserId;
       this.updateUserId = updateUserId;
       this.insertDateTime = insertDatetime;
       this.updateDateTime = updateDatetime;
    }
   
    @Id 
    @Column(name="ID", unique=true, nullable=false, length=32)
    @GeneratedValue(generator = "uuid-strategy")
    public String getId() {
        return this.id;
    }
    
    public void setId(String id) {
        this.id = id;
    }

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="CHILD_ID", nullable=false)
    public Child getChild() {
        return this.child;
    }
    
    public void setChild(Child child) {
        this.child = child;
    }

    
    @Column(name="FILE_NAME", nullable=false)
    public String getFileName() {
        return this.fileName;
    }
    
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    
    @Column(name="FILE_TYPE", nullable=false, length=32)
    public String getFileType() {
        return this.fileType;
    }
    
    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    
    @Column(name="FILE_SIZE", nullable=false)
    public int getFileSize() {
        return this.fileSize;
    }
    
    public void setFileSize(int fileSize) {
        this.fileSize = fileSize;
    }

    
    @Column(name="FILE_CONTENT", nullable=false)
    public byte[] getFileContent() {
        return this.fileContent;
    }
    
    public void setFileContent(byte[] fileContent) {
        this.fileContent = fileContent;
    }


    @Column(name="COMMENT")
	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
    
    
}


