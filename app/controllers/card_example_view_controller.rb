class CardExampleViewController < UITableViewController
  attr_accessor :hidesNotification

  def initWithStyle(style)
    super

    self
  end

  def viewDidLoad
    super
    @hidesNotification = false
    self.title = "Card & Color"
    self.tableView.backgroundColor = UIColor.colorWithWhite(0.91, alpha:1.0)
    self.tableView.separatorStyle  = UITableViewCellSeparatorStyleNone
  end

  def tableView(tableView, heightForRowAtIndexPath:indexPath)
    if !@hidesNotification && indexPath.section == 0
      return 140.0
    else 
      return 100.0
    end
  end

  def numberOfSectionsInTableView(tableView)
  # // Return the number of sections.
    if @hidesNotification
      return 1
    else
      return 2
    end
  end

  def tableView(tableView, numberOfRowsInSection:section)
    # // Return the number of rows in the section.
    if !@hidesNotification && section == 0
      return 1
    else
      return 19
    end
  end

  NOTIFICATIONCELLID = "NotificationCell"
  LISTCELLID         = "ListCell"
  def tableView(tableView, cellForRowAtIndexPath:indexPath)

    if !@hidesNotification && indexPath.section == 0
      # MDCCardExampleNotificationCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NotificationCell" forIndexPath:indexPath];
      cell = tableView.dequeueReusableCellWithIdentifier(NOTIFICATIONCELLID) #, forIndexPath:indexPath)

      if cell.nil?
        cell = CardExampleNotificationCell.alloc.init #WithStyle(UITableViewCellStyleSubtitle, reuseIdentifier:NOTIFICATIONCELLID)
      end


      cell.okayButton.addTarget(self, action: 'okayNotification:', forControlEvents: UIControlEventTouchUpInside)
    
      cell
    else
      cell = tableView.dequeueReusableCellWithIdentifier(LISTCELLID)

      if cell.nil?
        cell = CardExampleListCell.alloc.init #WithStyle(UITableViewCellStyleSubtitle, reuseIdentifier:LISTCELLID)
      end

      case (indexPath.row)
      when 0
        cell.titleLabel.text = "Red" 
        cell.previewImageView.setBackgroundColor(UIColor.mdcRedColorWithPaletteId(indexPath.row))
      when 1
        cell.titleLabel.text = "Pink"
        cell.previewImageView.setBackgroundColor(UIColor.mdcPinkColorWithPaletteId(indexPath.row))
      when 2
        cell.titleLabel.text = "Purple"
        cell.previewImageView.setBackgroundColor(UIColor.mdcPurpleColorWithPaletteId(indexPath.row))
      when 3
        cell.titleLabel.text = "Deep Purple"
        cell.previewImageView.setBackgroundColor(UIColor.mdcDeepPurpleColorWithPaletteId(indexPath.row))
      when 4
        cell.titleLabel.text = "Indigo"
        cell.previewImageView.setBackgroundColor(UIColor.mdcIndigoColorWithPaletteId(indexPath.row))
      when 5
        cell.titleLabel.text = "Blue"
        cell.previewImageView.setBackgroundColor(UIColor.mdcBlueColorWithPaletteId(indexPath.row))
      when 6
        cell.titleLabel.text = "Light Blue"
        cell.previewImageView.setBackgroundColor(UIColor.mdcLightBlueColorWithPaletteId(indexPath.row))
      when 7
        cell.titleLabel.text = "Cyan"
        cell.previewImageView.setBackgroundColor(UIColor.mdcCyanColorWithPaletteId(indexPath.row))
      when 8
        cell.titleLabel.text = "Teal"
        cell.previewImageView.setBackgroundColor(UIColor.mdcTealColorWithPaletteId(indexPath.row))
      when 9
        cell.titleLabel.text = "Green"
        cell.previewImageView.setBackgroundColor(UIColor.mdcGreenColorWithPaletteId(indexPath.row))
      when 10
        cell.titleLabel.text = "Light Green"
        cell.previewImageView.setBackgroundColor(UIColor.mdcLightGreenColorWithPaletteId(indexPath.row))
      when 11
        cell.titleLabel.text = "Lime"
        cell.previewImageView.setBackgroundColor(UIColor.mdcLimeColorWithPaletteId(indexPath.row))
      when 12
        cell.titleLabel.text = "Yellow"
        cell.previewImageView.setBackgroundColor(UIColor.mdcYellowColorWithPaletteId(indexPath.row))
      when 13
        cell.titleLabel.text = "Amber"
        cell.previewImageView.setBackgroundColor(UIColor.mdcAmberColorWithPaletteId(indexPath.row))
      when 14
        cell.titleLabel.text = "Orange"
        cell.previewImageView.setBackgroundColor(UIColor.mdcOrangeColorWithPaletteId(indexPath.row))
      when 15
        cell.titleLabel.text = "Deep Orange"
        cell.previewImageView.setBackgroundColor(UIColor.mdcDeepOrangeColorWithPaletteId(indexPath.row))
      when 16
        cell.titleLabel.text = "Brown"
        cell.previewImageView.setBackgroundColor(UIColor.mdcBrownColorWithPaletteId(indexPath.row))
      when 17
        cell.titleLabel.text = "Gray"
        cell.previewImageView.setBackgroundColor(UIColor.mdcGrayColorWithPaletteId(indexPath.row))
      when 18
        cell.titleLabel.text = "Blue Gray"
        cell.previewImageView.setBackgroundColor(UIColor.mdcBlueGrayColorWithPaletteId(indexPath.row))
      end

      cell
    end
  end

  def okayNotification(sender)
    @hidesNotification = true
    self.tableView.deleteSections(NSIndexSet.indexSetWithIndex(0),  withRowAnimation:UITableViewRowAnimationTop)
  end

end
