class AppDelegate
  INTERVAL = 1

  attr_accessor :status_menu

  def applicationDidFinishLaunching(notification)
    @app_name = NSBundle.mainBundle.infoDictionary['CFBundleDisplayName']

    @status_menu = NSMenu.new

    @status_item = NSStatusBar.systemStatusBar.statusItemWithLength(NSVariableStatusItemLength).init
    @status_item.setMenu(@status_menu)
    @status_item.setHighlightMode(true)
    @status_item.setTitle('...')

    @defaults = NSUserDefaults.standardUserDefaults
    @defaults['currency'] ||= 'USD'

    @usd = createMenuItem('BTC/USD', 'toUsd')
    @usd.setState NSOnState if @defaults['currency'] == 'USD'
    @status_menu.addItem @usd

    @gbp = createMenuItem('BTC/GBP', 'toGbp')
    @gbp.setState NSOnState if @defaults['currency'] == 'GBP'
    @status_menu.addItem @gbp

    @status_menu.addItem createMenuItem('Quit', 'terminate:')

    NSTimer.scheduledTimerWithTimeInterval(INTERVAL, target: self, selector: 'checkValue', userInfo: nil, repeats: true)
    self.checkValue
  end

  def createMenuItem(name, action)
    NSMenuItem.alloc.initWithTitle(name, action: action, keyEquivalent: '')
  end

  def checkValue
    Crypto.send("to#{@defaults['currency'].capitalize}") do |price|
      @status_item.setTitle("#{price}")
    end
  end

  def toUsd
    @status_item.setTitle('...')

    @gbp.setState NSOffState
    @usd.setState NSOnState

    @defaults['currency'] = 'USD'
    self.checkValue
  end

  def toGbp
    @status_item.setTitle('...')

    @usd.setState NSOffState
    @gbp.setState NSOnState

    @defaults['currency'] = 'GBP'
    self.checkValue
  end

end