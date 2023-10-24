/*
Write a function that returns random OTP number of 6 digits.
*/
drop function if exists otp;
delimiter $
create function otp() returns int
deterministic
begin
    declare num int;
    select round(concat(ceil(rand()*10), rand()*1000, rand()*100)) into num;
    returns num;
end $
delimiter ;