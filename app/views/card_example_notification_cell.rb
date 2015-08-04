class CardExampleNotificationCell < MDCCardTableViewCell

  attr_accessor :titleLabel, :descriptionLabel, :okayButton

  def initWithFrame(frame)
    super

    @titleLabel           = UILabel.alloc.initWithFrame [[30, 10], [150, 20]]
    @titleLabel.font      = UIFont.mdcTitleFont
    @titleLabel.textColor = UIColor.mdcTextColor
    @titleLabel.text      = "Card Component"
    
    @descriptionLabel           = UILabel.alloc.initWithFrame [[30, 40], [250, 20]]
    @descriptionLabel.font      = UIFont.mdcBody1Font
    @descriptionLabel.textColor = UIColor.mdcSecondaryTextColor
    @descriptionLabel.text      = "This is a card components examples. Inspired by Google Material Design."

    @okayButton                   = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @okayButton.titleLabel.font   = UIFont.mdcButtonFont
    @okayButton.frame             = [[100, 100],[100,25]]
    @okayButton.setTitleColor(UIColor.mdcRedColorWithPaletteId(3), forState:UIControlStateNormal)
    @okayButton.setTitle("okay", forState:UIControlStateNormal)
    @okayButton.layer.borderWidth = 1.0;
    @okayButton.layer.borderColor = UIColor.lightGrayColor.CGColor

    contentView.addSubview(@titleLabel)
    contentView.addSubview(@descriptionLabel)
    contentView.addSubview(@okayButton)

    self.backgroundColor = UIColor.whiteColor

    
    self
  end

end
