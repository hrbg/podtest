class MasterViewController < UITableViewController
  attr_accessor :objects

  def viewDidLoad
    super
    # self.navigationController.navigationBar.barStyle = UIBarStyleBlackOpaque
    # self.navigationController.navigationBar.translucent = false
  
  
    self.tableView.rowHeight = 64.0
    
    # // Do any additional setup after loading the view, typically from a nib.
  end

  def numberOfSectionsInTableView(tableView)
    return 1
  end

  def tableView(tableView, numberOfRowsInSection: section)
    return 1
  end

  CELLID = "Cell"
  def tableView(tableView, cellForRowAtIndexPath: indexPath)

    # MDCTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell = tableView.dequeueReusableCellWithIdentifier(CELLID)

    if cell.nil?
      cell = MDCTableViewCell.alloc.initWithStyle(UITableViewCellStyleSubtitle, reuseIdentifier:CELLID)
    end
    
    puts "\n\n\nCell #{cell.inspect}\n\n\n"

    if indexPath.row == 0
      cell.textLabel.text = "Card & Color"
      cell.detailTextLabel.text = "Example for MDCCardView & UIColor extensions."
    end

    cell
  end

  def tableView(tableView, didSelectRowAtIndexPath: indexPath)
    if indexPath.row == 0
      self.performSegueWithIdentifier("pushToCardExample", sender:self)
    end
  end

end
