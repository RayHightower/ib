class HomeController < UIViewController

    def loadView
      views = NSBundle.mainBundle.loadNibNamed "View", owner:self, options:nil
      self.view = views[0]
    end

    def viewDidLoad
      puts "\n\nEntering vieDidLoad in HomeController\n"
      button = view.viewWithTag 1
      @label = view.viewWithTag 2
      @original_text = @label.text
      button.addTarget(self, action:'buttonTapped:', forControlEvents:UIControlEventTouchUpInside)
    end

    def buttonTapped(sender)
      puts "\n\nThe button has been tapped.\n" # console message
      if toggle == 1
        @label.text = @original_text
      else 
        @label.text = "building apps."
      end
    end

    def toggle
      return @toggle = 1 if !@toggle || @toggle == 0
      return @toggle = 0 if @toggle == 1
    end
end
