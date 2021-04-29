package com.hellow.demo.controller;


import com.hellow.demo.model.Number;
import com.hellow.demo.service.NumberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PathVariable;

import javax.jws.WebParam;
import javax.validation.Valid;
import java.util.HashMap;

@Controller
@EnableAutoConfiguration
public class CalculatorController {

    @Autowired


    @Qualifier("NumberService")
    public NumberService numberService;

    @RequestMapping(method = RequestMethod.GET, value = "/")
    public String home(Model model) {

        model.addAttribute("number", new Number());
        System.out.println(model);
        return "index";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/skaiciai")
    public String getAllNumbers(Model model) {
        model.addAttribute("skaiciai", numberService.getAll());
        return "skaiciai";
    }

        @RequestMapping(method = RequestMethod.GET, value = "/rodyti{id}")
        public String getbyId(@RequestParam("id") int id, Model model) {
            model.addAttribute("skaicius", numberService.getById(id));
            return "skaicius";
        }

        @RequestMapping(method = RequestMethod.GET, value = "/trinti{id}")
        public String delete(@RequestParam("id") int id, Model model){
            numberService.delete(id);
            model.addAttribute("skaiciai", numberService.getAll());
            return "skaiciai";
        }

        @RequestMapping(method = RequestMethod.GET, value = "/atnaujinti{id}")
        public String update(@RequestParam("id") int id, Model model){
            model.addAttribute("skaicius", numberService.getById(id));
            return "atnaujinti";
        }

        @RequestMapping(method = RequestMethod.POST, value = "/atnaujintiSkaiciu")
        public String updateNumber(@ModelAttribute("skaicius") Number number){
            numberService.update(number);
            return "redirect:/rodyti?id=" + number.getId();
        }



    @RequestMapping(method = RequestMethod.POST, value = "/skaiciuoti")
    String skaciuoti(@Valid @ModelAttribute("number") Number e, BindingResult br,
                     @RequestParam HashMap<String, String> skaiciai, ModelMap modelMap) {

        if (br.hasErrors()) {
            return "index";
        } else {
            int sk1 = Integer.parseInt(skaiciai.get("sk1"));
            int sk2 = Integer.parseInt(skaiciai.get("sk2"));
            String zenklas = skaiciai.get("zenklas");

            int rezultatas = 0;

            if (zenklas.equals("+")) {
                rezultatas = sk1 + sk2;
            } else if (zenklas.equals("-")) {
                rezultatas = sk1 - sk2;
            } else if (zenklas.equals("*")) {
                rezultatas = sk1 * sk2;
            } else if (zenklas.equals("/")) {
                rezultatas = sk1 / sk2;
            }

            modelMap.put("sk1", sk1);
            modelMap.put("sk2", sk2);
            modelMap.put("zenklas", zenklas);
            modelMap.put("rezultatas", rezultatas);

            numberService.save(new Number(sk1, sk2, zenklas, rezultatas));


            System.out.println(sk1 + zenklas + sk2);
            return "skaiciuoti";
        }


    }
}
