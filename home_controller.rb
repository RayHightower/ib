class HomeController < UIViewController

    def loadView
      views = NSBundle.mainBundle.loadNibNamed "View", owner:self, options:nil
      self.view = views[0]
    end

    def viewDidLoad
      puts "\n\nEntering vieDidLoad in HomeController\n"
      button = view.viewWithTag 1
      @label = view.viewWithTag 2
      button.addTarget(self, action:'buttonTapped:', forControlEvents:UIControlEventTouchUpInside)
    end

    def buttonTapped(sender)
      puts "\n\nThe button has been tapped.\n" # console message
      @label.text = "learning & doing."
    end
end
