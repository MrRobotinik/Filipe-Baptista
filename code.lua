
--[[
    Otimizado para Lua 5.1
    Feito por: Filipe B. Souza
]]--

--[[
    Todos números divisiveis por 3 e 5 são tambem divisíveis por 15
    Portanto, podemos fazer uma só condição no bloco if
    Pelo contrário usariamos (i % 3 == 0 and i % 5 == 0)

    Observação: A razão de existir uma variável "final message"
    é porque fazer diversas chamadas de função é inerentemente mais lento.
    
    Portanto chamamos apenas uma vez depois da soma das Strings!
    Obviamente, podendo ser modificado de acordo com a necessidade.
]]

local fm = ""; -- Final Message (Mensagem Final);

for i = 1, 100, 1 do
    if i % 15 == 0 then -- Verifique se a condição é verdadeira.
        fm = fm.."Universo\n";
    elseif i % 3 == 0 then -- Pelo contrário, verifique as outras em ordem.
        fm = fm.."Uni\n";
    elseif i % 5 == 0 then
        fm = fm.."Verso\n";
    else
        fm = fm..i.."\n"; -- Resultado padrão caso as condições não sejam True.
    end;
end;

print(fm);
