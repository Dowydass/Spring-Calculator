package com.hellow.demo.controller;


import com.hellow.demo.Number;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import javax.validation.Valid;
import java.net.BindException;
import java.util.HashMap;

@Controller

public class HelloController {

    @RequestMapping(method = RequestMethod.GET, value = "/")
    public String home(Model model) {
        model.addAttribute("number", new Number());
        System.out.println(model);
        return "index";
    }

   // @RequestMapping(method = RequestMethod.GET, value = "/test")


    @RequestMapping(method = RequestMethod.POST, value = "/skaiciuoti")
    String skaciuoti(@Valid @ModelAttribute("number") Number e, BindingResult br,
                     @RequestParam HashMap<String, String> skaiciai, ModelMap modelMap) {

        if (br.hasErrors()) {
            return "index";
        }
        int sk1 = Integer.parseInt(skaiciai.get("sk1"));
        int sk2 = Integer.parseInt(skaiciai.get("sk2"));
        String zenklas = skaiciai.get("zenklas");


        double rezultatas;

        modelMap.put("sk1", sk1);
        modelMap.put("sk2", sk2);
        modelMap.put("zenklas", zenklas);

        System.out.println(sk1 + zenklas + sk2);

        switch (zenklas) {
            case "+":
                rezultatas = sk1 + sk2;
                modelMap.put("rezultatas", rezultatas);
                return "skaiciuoti";
            case "-":
                rezultatas = sk1 - sk2;
                modelMap.put("rezultatas", rezultatas);
                return "skaiciuoti";
            case "*":
                rezultatas = sk1 * sk2;
                modelMap.put("rezultatas", rezultatas);
                return "skaiciuoti";
            case "/":
                rezultatas = sk1 / sk2;
                modelMap.put("rezultatas", rezultatas);
                return "skaiciuoti";
            default:
                return "index";

        }
    }
}
