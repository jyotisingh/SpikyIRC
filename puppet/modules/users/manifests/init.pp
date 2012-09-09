class users {
  user { 'deployer':
    ensure     => present,
    managehome => true,
    groups     => 'wheel',
  }

  ssh_authorized_key { 'deployer_key':
    ensure  => present,
    key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDHB/a1L7iEH/SMUBukLpUpCQgZboOEvc+0RHMQZ0JMC4iaxzwoAbbDRUvv2T39NRXaojk3cgAQ9D9piN91jU9qwgVTTRs4smHs/A1yxvlsZVL879Q6pTBQpXFYMCEL9rSVQtHK27mEVht5SOoephKoTgA2icOqtbNFdWyb27v/CEE/k9sKI4igJsIbLzhjN9TYQf8LW8d9DvCuNbgXSYUK6iK/7w6hmAlHMXhCSs2LsvkjEqLSgCgUo0FRnUX76dGBpoDNKe6jryPKMlGZN5A73yOF1mpTSw33KJRXi99Uq1jQiQRfIgwHd5YSaX/Q+4xpdBaoAyh5+A45fQBGmT63',
    type    => 'rsa',
    user    => 'deployer',
    require => User['deployer'],
  }

  users::irc {
    'nfisher': fullname => 'Nathan Fisher', key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDHB/a1L7iEH/SMUBukLpUpCQgZboOEvc+0RHMQZ0JMC4iaxzwoAbbDRUvv2T39NRXaojk3cgAQ9D9piN91jU9qwgVTTRs4smHs/A1yxvlsZVL879Q6pTBQpXFYMCEL9rSVQtHK27mEVht5SOoephKoTgA2icOqtbNFdWyb27v/CEE/k9sKI4igJsIbLzhjN9TYQf8LW8d9DvCuNbgXSYUK6iK/7w6hmAlHMXhCSs2LsvkjEqLSgCgUo0FRnUX76dGBpoDNKe6jryPKMlGZN5A73yOF1mpTSw33KJRXi99Uq1jQiQRfIgwHd5YSaX/Q+4xpdBaoAyh5+A45fQBGmT63';

    'nferrier': fullname => 'Nic Ferrier', key => 'AAAAB3NzaC1kc3MAAACBANuM1SkfYrzGXYyg8bIqGvGMr6otpJQ3UEq6LdZDr0lQDLjV6YaAA+s2E/Vks9fCTwBzJ1y6wzEh5dVR2XCaxtMHcJTdBFBZNVnEUjx1mkuxaQb3LBWBlXrA/8ZfSC/eLaqwv7hVSbsZTm7AsO+fcp1O07YesnTOHer1EpmM4vuNAAAAFQD3s+lUUQzd8OMPyxM1b+xplGpMfwAAAIA5y/RpW5+xb3nsQha6YiJ8HSws7Vl92KV/oR0RUWwty4UgRhFr/6gQIZKX38Vp4JRbzflvFfCpA+7Bsupgsdd1GWI5NY199c8MnbXhKmnaKQHX2PSaEUdp5mePqYF7vj3lq1u3Ouuq8x+k9gn1PzzKK43nzn8JOtRMN0vpImmoCwAAAIEAlmKKcQNchCwDKvN/mUHaXplvm0vmv/Fkk4ZD0aIvii+wzRSSOFyuJ/oUVN98kXf2W9kgQDir6wnAhuU8PSZwKKyDwv3r0JVWm1XZkbUvoGYCXYEzufWy/D4thO2H0SUuoZ9RGdtSiEFyTSZH4bzUq2tGVibZuCPquDPl5AzRVIE=', type => 'ssh-dss';

    'ppotter': fullname => 'Philip Potter', key  => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAxPK5a2PwUij5Z+/dYKU5oIBVugDOY2QwuXiXsvo8xMoE9AMWYnLmDTgGVZ7VBqtXXuOhvRl7jm38xsFSaB7R0Z6ej48tmemnRKPIN4m7ahUua3Gdlr24/5dXB9QUg50JZsekF/drQivjfRhSTNFOnBhdcfkYy7Zi+tShRHJ/TWpMjFkZ+EBiW6GPYZqyBTOXV6HdPWOePxJkBRpEHcWxoQ+3uBLO1uCOxNAX10d+maFZ0Ql8zEvdAZJqMprC7LCBKKZBp5pw8mgSAIAHsPljnZ+dvabY4+WBd0qOvk4iSkjWad96LcPw8EyvhcL0+PK4gGLD1jb30y7kwxCc7EzggQ==';

    'ihassin': fullname => 'Itamar Hassin', key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCgcAeBoU9JsOoysDmP7h2PvED6r9jc1bO4QkzWmI3BhNEs4hNsmuGTOonk5gzgVQGAxQh9GDJyhO0HL2PVqIWsfvS8seqbs6b2pio2O874Jfs+4DQaqzCtA9ca+bnb9NgA80tBDMhrNT3iNVtAsWNyhqdglr6tXZb5S/10FZTYlJb7tWBIAFRnpAOW2Gk3q6B55x84RoklZJXxfdoG0ZfhMAux9DsrtevZfQPcbBys0yLcuIODZJaMUfaqn6qBisZfj3FPSfKFyFiF6wR2VroWDhFBIs5NIx9b8lPH8Up5ldqK7hhFM+mOKLetbfyLOo3+3NHoMxIIb7Frtn0uZBsz';

    'mryall': fullname => 'Mark Ryall', key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC7nrBRrLteSHFD1WVKjBDBv2OvpCk+/go/TERzHViiPS7UUQlGwlw1NRo1qRB0EDJzzvZP+mo1OuEdxmMRLbCibeEYceLpHyElS+Eap+QJAHhBVcB0tJe0dI/09jCPo9NepQ/sOlvXSmgchwvXx2qkEp6KmJ+Si8Z2sbCC47V6LV+UljCy4xP5rfYip1kmw+n0rQK66w6vBtDP6Uth3meYockdOhu2ZrG6xn03eXFkKIv598+2ZgmCAuH8jsCOzVzYWZxnpRr2GvtuWnU6wtCYsMPTQ3JljBhJcFyvol5P8jn+ZtbvToz/Kw1QhgMAEyFYw15QUdm1Zxq868gVK3o1';

    'jsmith': fullname => 'Jennifer Smith', key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC7ycJbZjZrHlmB7Ii1ir2R/cU4bjLKYB2aOWAhjCgiUz/RviRnlTFwRtOk6RQ5Io5r4X1s2TvtwxC1jSwxONrQ1mD4yZjBjT/HmwDLsRDH2P7oyx4yhhcu8Ih4eGMIq81wL65DDZNwM5/jDY/5ge0d3BeUebA8hz6Dhy6pLg1cjOH+fbMu9BH73H7FDJaBTFJBvOalkPTJwv4SnnN9HfauonNkK2rb1ODG5P02azVTXEwOd3dgg2NkZU3AyKHUwfAAQgpUMsTIdP5Kbxy2C1amRwQu/rlYpP1SkCgt3ZvET7+iA5Rl5EyNJghqKa1Ymb8gjYr5wm8B2QAY1+cr87xP';

    'jgray': fullname => 'James Gray', key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDEk/vSOfP/WS96ncFIvgrmzqr9SJeDR9k9LwrqcS/xcuyQl3l9GmqTAI3Cyz1z58qZRKfigE+cUjX33Kun6Ms8D4f1ubi+sT9kqI64QCHCpKRgwaDe4ocC30khxGvmF0Kn0gaqf/AoUTmXSeDpqV9/Id2FXGfnyoMnoKI/kS92heAJJWAJkvlYb3rcFlVBZey4rVzWDcsD8QjXsP4N/cbDoPxAzXhLcU9VWBHhQyBj3yCdqMs7OXnu7di4ZDzJugnOaV5dRHFLtP0uUxSBvoRoSO5dG9B6WM+xr2igJZvIYEiINTtwV+Va6aCe0fBww1ExnbsK00n/O4BOATjMIPrb';

    'sdqali': fullname => 'Sadique Ali', key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDZt5eGKHPSWrLNqTd+DqoZAF2HHDL++jzhuP3xgHmGXtsC+zT60dqF1ojBVGBnB7NxKWowwluC1KkRWpt7zBsEiZACpuNSzbIH5UXGOR0bPR0sSULf8WdokhIwUDrgdGh/daZo5FiXxbgYaadlhpBw7SdZVbYywyzMtxlE0shXxnzMoLyodHNAK/vN8BN7ITIcNF0hfJJx/C4N2+muBiGc4pBdSiiSjsZZyIycmT+KwqqpCdS5ZVIUTdfPyVVgr+Qpt8SbPbic7JXgQ0Oh6Vx6bY3xNCvh5+em0lvTZ3P5o1W37H/NjbHTH2qL7/MSecFiVsvxivzQpUE2nbd/GLgB';

    'jbrechtel': fullname => 'James Bretchel', key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCh10B3Vu0DU3+7Rf7yWkvRUEtqSQGZ+CedT4vbrL9/1pe7k2rIdEh4RRHEGIyHEz9f1csHYrVVhJnce3vXB5yyvB6FKD1wHnLvwp9Rc6PKilirofEpORTwjnPVgC1aUrI2rNJHhqUbuJ7wTfyjOGxGPYQ78nVopLmPq0fYSZD4fgKyn0uzic5Io1H65yqYyKA/O6/EfxVmEP7HmBt7/G9GzY+KEI8I2ze+4N9UXwd1E+PjWg2tXPKT6nmUBfeLsrCprETOnCWD2il8r3+YHvNH+EQZmVpdp8HIhO8T1AVRy7Bw7e7wU68lrWHkSASVvWO7ScA3pyRf8OI4LHsdP3Cr';
  }
}
