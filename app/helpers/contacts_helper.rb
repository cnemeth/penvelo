module ContactsHelper

  def user_list
    User.all.collect {|user|[user.name, user.id]}
  end

  def im_types
    ImType.all.collect {|im_type|[im_type.name, im_type.id]}
  end

  def us_states_list
    [
    ['...select from list ...'],
    ['Alabama'],
    ['Alaska'],
    ['American Samoa'],
    ['Arizona'],
    ['Arkansas'],
    ['California'],
    ['Colorado'],
    ['Connecticut'],
    ['Delaware'],
    ['District of Columbia'],
    ['Florida'],
    ['Georgia'],
    ['Guam'],
    ['Hawaii'],
    ['Idaho'],
    ['Illinois'],
    ['Indiana'],
    ['Iowa'],
    ['Kansas'],
    ['Kentucky'],
    ['Louisiana'],
    ['Maine'],
    ['Maryland'],
    ['Massachusetts'],
    ['Michigan'],
    ['Minnesota'],
    ['Mississippi'],
    ['Missouri'],
    ['Montana'],
    ['Nebraska'],
    ['Nevada'],
    ['New Hampshire'],
    ['New Jersey'],
    ['New Mexico'],
    ['New York'],
    ['North Carolina'],
    ['North Dakota'],
    ['Northern Marianas Islands'],
    ['Ohio'],
    ['Oklahoma'],
    ['Oregon'],
    ['Pennsylvania'],
    ['Puerto Rico'],
    ['Rhode Island'],
    ['South Carolina'],
    ['South Dakota'],
    ['Tennessee'],
    ['Texas'],
    ['Utah'],
    ['Vermont'],
    ['Virginia'],
    ['Virgin Islands'],
    ['Washington'],
    ['West Virginia'],
    ['Wisconsin'],
    ['Wyoming']
    ]
  end

  def countries_list
    [
    ['...select from list ...'],
    ['Afghanistan'],
    ['Albania'],
    ['Algeria'],
    ['Akrotiri'],
    ['American Samoa'],
    ['Andorra'],
    ['Angola'],
    ['Switzerland'],
    ['United Kingdom'],
    ['United States']
    ]
  end
end

