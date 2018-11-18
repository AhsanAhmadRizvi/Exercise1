class ValuesPageObjects
  def value_1_text_field
    $browser.text_field(:id => "txt_val_1")
  end

  def value_2_text_field
    $browser.text_field(:id => "txt_val_2")
  end

  def value_3_text_field
    $browser.button(:id => "txt_val_3")
  end

  def value_4_text_field
    $browser.button(:id => "txt_val_4")
  end

  def value_5_text_field
    $browser.button(:id => "txt_val_5")
  end

  def total_balance_text_field
    $browser.button(:id => "txt_val_5")
  end

  def page_title
    $browser.title.text
  end

end