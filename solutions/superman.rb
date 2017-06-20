class Superman
attr_reader :name, :secret_identity, :jailed_enemies
  def initialize(name, secret_identity)
    @name = name
    @secret_identity = secret_identity
    @jailed_enemies = []
  end

  def send_enemy_to_jail(enemy)
    jailed_enemies << enemy
  end

  def how_many_enemies_in_jail?
    jailed_enemies.count
  end

  def enemies_in_jail
    jailed_enemies.sort
  end

  def release_oldest_prisoner
    @jailed_enemies.shift
  end

  def release_newest_prisoner
    @jailed_enemies.pop
  end
end
