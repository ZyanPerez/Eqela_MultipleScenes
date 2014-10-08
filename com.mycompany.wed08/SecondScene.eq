
/*
 *
 * SecondScene
 * Created by Eqela Studio 2.0b7.4
 */

public class SecondScene : SEScene
{
        SESprite but1;
    SESprite but2;
    SESprite but3;
    SESprite but4;
SESprite text2;
    SESprite text3;
    SESprite text4;
    SESprite text5;


    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        add_entity(SESpriteEntity.for_color(Color.instance("#0099FF"), get_scene_width(), get_scene_height()));

    but1 = add_sprite_for_color(Color.instance("#E62E00"), 0.25*get_scene_width(), 0.25*get_scene_height());
        but1.move(0.75*get_scene_width(),0.6*get_scene_height());

        but2 = add_sprite_for_color(Color.instance("white"), 0.25*get_scene_width(), 0.25*get_scene_height());
        but2.move(0.75*get_scene_width(),0.7*get_scene_height());

        but3 = add_sprite_for_color(Color.instance("#33CC33"), 0.25*get_scene_width(), 0.25*get_scene_height());
        but3.move(0.75*get_scene_width(),0.8*get_scene_height());

        but4 = add_sprite_for_color(Color.instance("#FFFF66"), 0.25*get_scene_width(), 0.25*get_scene_height());
        but4.move(0.75*get_scene_width(),0.9*get_scene_height());

		rsc.prepare_font("myfont","ariel bold color=#551a8b",40);

        text2=add_sprite_for_text("		Go to Main","myfont");
        text2.move(0.75*get_scene_width(),0.7*get_scene_height());

        text3=add_sprite_for_text("		I'm Green","myfont");
        text3.move(0.75*get_scene_width(),0.8*get_scene_height());

        text4=add_sprite_for_text("		I'm Yellow","myfont");
        text4.move(0.75*get_scene_width(),0.9*get_scene_height());

        text5=add_sprite_for_text("		I'm Red","myfont");
        text5.move(0.75*get_scene_width(),0.6*get_scene_height());
       
    }
    public void on_pointer_press(SEPointerInfo pi) {
        base.on_pointer_press(pi);
        
        if(pi.is_inside(0.75*get_scene_width(),0.6*get_scene_height(),get_scene_width(), 0.7*get_scene_height())) {
            switch_scene(new FirstScene());
        }
        if(pi.is_inside(0.75*get_scene_width(),0.7*get_scene_height(),get_scene_width(), 0.8*get_scene_height())) {
            switch_scene(new MainScene());
        }
        if(pi.is_inside(0.75*get_scene_width(),0.8*get_scene_height(),get_scene_width(), 0.9*get_scene_height())) {
            switch_scene(new ThirdScene());
        }
        if(pi.is_inside(0.75*get_scene_width(),0.9*get_scene_height(),get_scene_width(), get_scene_height())) {
            switch_scene(new FourthScene());
        }
    }
    public void cleanup() {
        base.cleanup();
    }
}