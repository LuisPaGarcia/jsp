/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jorge Alejandro
 */
public class guardar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String medidaPeso, medidaAltura;
    Double altura, peso, suma, alturaCuadrado;
    Double pesoKilo, resultado;
    String clibras = "libras";
    String cpies = "pies";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        {
            medidaPeso = request.getParameter("medidaPeso");
            medidaAltura = request.getParameter("medidaAltura");
 
            altura = Double.parseDouble(request.getParameter("altura"));
            peso = Double.parseDouble(request.getParameter("peso"));

            if (medidaPeso.equals(clibras)){
              peso = librasAKilos(peso);
            } 

            if (medidaAltura.equals(cpies)){
              altura = piesAMetros(altura);
            } 
            
            alturaCuadrado = altura * altura;
            resultado = calculoIMC(peso, alturaCuadrado);
            
            getServletContext().setAttribute("peso", formatear(peso));            
            getServletContext().setAttribute("altura", formatear(altura));
            getServletContext().setAttribute("alturaCuadrado", formatear(alturaCuadrado));
            getServletContext().setAttribute("resultado", formatear(resultado));
            
            request.getRequestDispatcher("resultados.jsp").forward(request, response);
            
        }
    }
    
    // Convierte libras a kilos, basado en una constante
    double kilo = 2.20;
    protected double librasAKilos(double libras){
        return libras / kilo;
    }
    
    // Convierte pies a metros, basado en una constante
    double pie = 3.28084;
    protected double piesAMetros(double pies){
        return pies / pie;
    }
    
    // Calcula el IMC con un peso en kilos y una altura de metros
    protected double calculoIMC(double kilos, double metrosCuadrados) {
        return kilos / metrosCuadrados;
    }
    
    // Convierte un decimal largo a un decimal con 2 decimales
    protected String formatear(double valor){
        return String.format("%,.2f", valor);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        processRequest(request, response);
    }

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
