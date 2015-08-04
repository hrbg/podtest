class CardExampleListCell < MDCCardTableViewCell
  extend IB

  attr_accessor :previewImageView, :titleLabel

  def initWithFrame(frame)
    super

    @previewImageView = UIImageView.alloc.initWithFrame [[0, 0], [50, 88]]
    @titleLabel       = UILabel.alloc.initWithFrame [[60, 10], [100, 20]]

    contentView.addSubview(@previewImageView)
    contentView.addSubview(@titleLabel)
    
    self
  end


  def layoutSubviews
    super
    self.previewImageView.layer.setCornerRadius(2.0)
  end
end
