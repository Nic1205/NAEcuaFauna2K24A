package NAFramework;

public class NAException extends Exception {

    public NAException(String e, String clase, String metodo) {
        //grabar el log
        System.out.println("--[[ERROR APPEARED --> LOG]]--" + clase +"."+ metodo +" : "+ e );
    }

    @Override 
    public String getMessage(){
        return "Lo sentimos! Algo salio mal ...";
    }    
}