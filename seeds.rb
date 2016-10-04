require_relative 'routes'
require_relative 'models/soda'
require_relative 'environment'

def main
  coke = Soda.create(
    name: 'Coke',
    sugar_content: '45'
  )
end

main if __FILE__ == $PROGRAM_NAME
