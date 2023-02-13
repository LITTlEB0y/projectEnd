/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package officermanagement.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import officermanagement.dao.OfficerDAO;
import officermanagement.model.Officer;

/**
 *
 * @author user
 */
@WebServlet(name = "OfficerServlet", urlPatterns = {"/"})
public class OfficerServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
	private OfficerDAO officerDAO;
	
@Override
	public void init() {
		officerDAO = new OfficerDAO();
	}
    

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        //เติม
        this.officerDAO =new OfficerDAO();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doGet(request, response);
    
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
        {
            try {
                insertOfficer(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(OfficerServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
				break;
			case "/delete":
        {	
            try {
                deleteOfficer(request,response);
            } catch (SQLException ex) {
                Logger.getLogger(OfficerServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
				break;
			case "/edit":
        {
            try {
                showEditForm(request,response);
            } catch (SQLException ex) {
                Logger.getLogger(OfficerServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
				break;
			case "/update":
        {	
            try {
                updateOfficer(request,response);
            } catch (SQLException ex) {
                Logger.getLogger(OfficerServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
				break;
			default:
        {
            try {
                listOfficer(request,response);
            } catch (SQLException ex) {
                Logger.getLogger(OfficerServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
				break;
			}
       
    }
    
 private void listOfficer(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Officer> listOfficer = officerDAO.selectAllOfficers();
		request.setAttribute("listOfficer", listOfficer);
		RequestDispatcher dispatcher = request.getRequestDispatcher("officer-list.jsp");
		dispatcher.forward(request, response);
	}
 private void updateOfficer(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String information = request.getParameter("information");
		

		Officer book = new Officer(id, name, information);
		officerDAO.updateOfficer(book);
		response.sendRedirect("list");
	}
   
    
    
private void deleteOfficer(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		officerDAO.deleteOfficer(id);
		response.sendRedirect("list");

	}
private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Officer existingOfficer = officerDAO.selectOfficer(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("officer-form.jsp");
		request.setAttribute("officer", existingOfficer);
		dispatcher.forward(request, response);

	}


private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("officer-form.jsp");
		dispatcher.forward(request, response);
	}

private void insertOfficer(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String name = request.getParameter("name");
		String information = request.getParameter("information");
		
		Officer newOfficer = new Officer(name, information);
		officerDAO.insertOfficer(newOfficer);
		response.sendRedirect("list");
	}
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
