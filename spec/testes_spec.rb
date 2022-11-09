

describe "Testes de Posts" do
       
        it "POST - Cadastrar um novo Post" do

          result = HTTParty.post("https://jsonplaceholder.typicode.com/posts")

        
          expect(result.response.code).to eql "201"
          end
   
        it "GET - Exibir todos os posts" do
            result = HTTParty.get("https://jsonplaceholder.typicode.com/posts")
         
            expect(result.response.code).to eql "200"
         end
        
        it "GET - Exibe um Post especifico referente ao ID" do
            result = HTTParty.get("https://jsonplaceholder.typicode.com/posts/100")

            
            expect(result.response.code).to eql "200"
            end


        it "GET - ID inválido" do
             result = HTTParty.get("https://jsonplaceholder.typicode.com/posts/A@1")
    
            
             expect(result.response.code).to eql "404"
             end

        it "GET - ID inexistente" do
             result = HTTParty.get("https://jsonplaceholder.typicode.com/posts/101")
       
               
             expect(result.response.code).to eql "404"
             end   
             
        it "GET - Exibe Comments de um determinado ID" do
             result = HTTParty.get("https://jsonplaceholder.typicode.com/posts/100/comments")
    
                
             expect(result.response.code).to eql "200"
             end
    
    
        it "GET - Comments com postId inválido" do
             result = HTTParty.get("https://jsonplaceholder.typicode.com/posts/A@1/comments")
        
                
            expect(result.response.code).to eql "404"
              end
    
        it "GET - Comments com postId inexistente" do
            result = HTTParty.get("https://jsonplaceholder.typicode.com/posts/101/comments")
           
                  
            expect(result.response.code).to eql "404"
            end      
            
        it "GET - Exibe Comments de um determinado postId" do
            result = HTTParty.get("https://jsonplaceholder.typicode.com/comments?postId=100")
       
                   
            expect(result.response.code).to eql "200"
            end
       
       
        it "GET - Comments com postId inválido" do
            result = HTTParty.get("https://jsonplaceholder.typicode.com/comments?postId=A@1")
           
                   
            expect(result.response.code).to eql "404"
            end
       
        it "GET - Comments com postId inexistente" do
            result = HTTParty.get("https://jsonplaceholder.typicode.com/comments?postId=101")
              
                     
            expect(result.response.code).to eql "404"
            end       
    

        it "PUT - Exibe o ID inserido no endpoint" do
            result = HTTParty.put("https://jsonplaceholder.typicode.com/posts/100")
           
                      
            expect(result.response.code).to eql "200"
            end    

        it "PUT - com ID inexistente inserido no endpoint" do
            result = HTTParty.put("https://jsonplaceholder.typicode.com/posts/101")
               
                          
            expect(result.response.code).to eql "404"
            end  
            
        it "PUT - com ID inválido inserido no endpoint" do
            result = HTTParty.put("https://jsonplaceholder.typicode.com/posts/A@1")
                   
                              
            expect(result.response.code).to eql "404"
            end     

        it "PATCH - Exibe o post referente ao ID inserido no endpoint" do
            result = HTTParty.patch("https://jsonplaceholder.typicode.com/posts/100")
               
                          
            expect(result.response.code).to eql "200"
            end    
    
        it "PATCH - com ID inexistente inserido no endpoint" do
            result = HTTParty.patch("https://jsonplaceholder.typicode.com/posts/101")
                   
                              
            expect(result.response.code).to eql "404"
            end  
                
        it "PATCH - com ID inválido inserido no endpoint" do
            result = HTTParty.patch("https://jsonplaceholder.typicode.com/posts/A@1")
                       
                                  
            expect(result.response.code).to eql "404"
            end 

        it "DELETE - Deletar determinado post pelo seu ID" do
            result = HTTParty.delete("https://jsonplaceholder.typicode.com/posts/100")
                   
                              
            expect(result.response.code).to eql "200"
            end    
        
        it "DELETE - com ID inexistente inserido no endpoint" do
            result = HTTParty.delete("https://jsonplaceholder.typicode.com/posts/101")
                       
                                  
            expect(result.response.code).to eql "404"
            end  
                    
        it "DELETE - com ID inválido inserido no endpoint" do
            result = HTTParty.delete("https://jsonplaceholder.typicode.com/posts/A@1")
                           
                                      
            expect(result.response.code).to eql "404"
            end 

    end
    