

# begin
#     #tentar algo
#     file = File.open('./ola.txt')
#     if file
#         puts file.read
#     end
# rescue Exception => exception
#     #obter erro
#     puts exception.message
#     puts exception.backtrace
# end

def soma(n1, n2)
    n1 + n2
    rescue Exception => exception
        puts 'erro ao executar a soma:'
        puts exception.message
    end

soma(10,'5')