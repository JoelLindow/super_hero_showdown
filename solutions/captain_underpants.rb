class CaptainUnderpants
attr_reader :name, :costume, :catchphrase, :greeting
  def initialize(name, costume, catchphrase)
    @name = name
    @costume = costume
    @catchphrase = catchphrase
    @greeting = "I'm #{name}. I love to wear #{costume}. #{catchphrase}"
  end
end
