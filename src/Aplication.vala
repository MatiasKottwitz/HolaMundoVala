public class MyApp : Gtk.Application {
    public MyApp(){
        Object(
            application_id: "https://github.com/MatiasKottwitz/HolaMundoVala",
            flags: ApplicationFlags.FLAGS_NONE
        );
        
    }
    
    protected override void activate (){
        var button_hola = new Gtk.Button.with_label ("Clickeame!"){
            margin= 50
        };
        button_hola.clicked.connect (()=>{
            button_hola.label = "Hola Mundo!";
            button_hola.sensitive=false;
        
           
        });
        var main_window = new Gtk.ApplicationWindow(this){
            default_height = 300,
            default_width = 300,
            title = "Hola Mundo"
        };
        
        main_window.add(button_hola);
        main_window.show_all();
    }
    
    public static int main (string[]args){
        return new MyApp().run (args);
    }
    
    
}
