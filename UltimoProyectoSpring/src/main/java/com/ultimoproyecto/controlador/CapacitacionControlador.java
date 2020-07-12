package com.ultimoproyecto.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.ModelAttribute;    
import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestMethod;

import com.ultimoproyecto.beans.Capacitacion;
import com.ultimoproyecto.dao.CapacitacionDao;   

@Controller
public class CapacitacionControlador {

	@Autowired
	CapacitacionDao capadao;
	
    @RequestMapping("/capform")    
    public String showform(Model m){    
        m.addAttribute("command", new Capacitacion());  
        return "capform";
    } 

    @RequestMapping(value="/capsave",method = RequestMethod.POST)    
    public String save(@ModelAttribute("cap") Capacitacion cap){    
    	capadao.save(cap);
        return "redirect:/viewcap";
    }
    
    @RequestMapping("/capform")    
    public String viewcap(Model m){    
        List<Capacitacion> list=capadao.getCapacitacion();
        m.addAttribute("list",list);  
        return "viewcap";
    }
  
    @RequestMapping(value="/editcap/{idcapacitacion}")    
    public String edit(@PathVariable int id_capacitacion, Model m){    
    	Capacitacion cap=capadao.getCapById(id_capacitacion);
        m.addAttribute("command",cap);
        return "capedittform";
    }

    @RequestMapping(value="/editcapsave",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("cap") Capacitacion cap){
    	capadao.update(cap);
        return "redirect:/viewcap";
    }

    @RequestMapping(value="/deletecap/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int idcapacitacion){    
    	capadao.delete(idcapacitacion);    
        return "redirect:/viewcap";
    }
  
}
