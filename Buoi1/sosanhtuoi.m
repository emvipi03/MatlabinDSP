disp('Xin chao! Han hanh duoc lam quen');
x = fix(30*rand);
disp('Tuoi toi trong khoang 0 ? 30');
disp(x);
gu = input('Xin nhap tuoi cua ban:  ');
if gu < x
      disp('Ban tre hon toi');
           elseif gu > x
      disp('Ban lon hon toi');
          else
      disp('Ban bang tuoi toi');
end
           