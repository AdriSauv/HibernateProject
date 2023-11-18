package org.eclipse.controller;

import java.io.IOException;

import org.eclipse.dao.HibernateDAO;
import org.eclipse.model.Users;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

/**
 * Servlet implementation class LeServlet
 */
@WebServlet("/LeServlet")
public class LeServlet extends HttpServlet {
	
	
	
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LeServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("flag");
		if(flag.equalsIgnoreCase("ajouterUser")) {
			this.doAjouterUsers(request,response);
		} else if (flag.equalsIgnoreCase("deleteUser")) {
			this.doDeleteUser(request, response);
		}
	}
	
	private void doAjouterUsers(HttpServletRequest request, HttpServletResponse response) {
		String prenom = request.getParameter("prenom");
		String nom = request.getParameter("nom");
		String numRue = request.getParameter("numRue");
		String nomRue = request.getParameter("nomRue");
		String cp = request.getParameter("cp");
		String ville = request.getParameter("ville");
		String tel = request.getParameter("tel");
		
		Users user = new Users(prenom, nom, numRue, nomRue, cp, ville, tel);
		HibernateDAO dao = new HibernateDAO();
		dao.ajouterUsers(user);
	}
	
	private void doDeleteUser(HttpServletRequest request, HttpServletResponse response) {
		String idUserString = request.getParameter("deleteUser");
		
		if(idUserString != null && !idUserString.isEmpty()) {
			try {
				int idUser = Integer.parseInt(idUserString);
				HibernateDAO dao = new HibernateDAO();
				Users deleteUser = dao.getUserById(idUser);
				
				if (deleteUser != null) {
					dao.deleteUser(deleteUser);
					return;
				}
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
		}
	}
}
