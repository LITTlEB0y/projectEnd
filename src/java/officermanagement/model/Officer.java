/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package officermanagement.model;

/**
 *
 * @author user
 */
public class Officer {
 
	protected int id;
	protected String name;
	protected String information;
	
	

	public Officer(int id, String name, String information) {
		super();
		this.id = id;
		this.name = name;
		this.information = information;
		
	}

    public Officer(String name, String information) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String Information) {
		this.information = information;
	}
	

}
