class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    puts "\n\nbeginning of AppDelegate\n"

    window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    window.rootViewController = HomeController.alloc.init
    window.makeKeyAndVisible

    true
  end
end
