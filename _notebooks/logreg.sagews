︠961c8595-6bb6-4485-986e-320b1a2c152cs︠
2+2
︡824a54dd-85d1-40db-8721-3763c6ea052d︡{"stdout":"4\n"}︡{"done":true}︡
︠a6836a72-c70d-480f-8684-d982e2f66892s︠
var('w1j w2j w3j th1 th2 th3 mu_j')
w_j = vector((w1j, w2j, w3j))
th = vector((th1, th2, th3))

Phi(x) = 1/(1 + e^-x)

p_th0 = Phi(w_j.dot_product(th) + mu_j)
p_th1 = 1 - p_th0

f(X, th) = p_th1^X * p_th0^(1 - X)
︡0a2db98d-8467-4ccc-abae-f8da015169aa︡{"stdout":"(w1j, w2j, w3j, th1, th2, th3, mu_j)\n"}︡{"done":true}︡
︠dc093597-5027-4a3b-90b7-7e2a0858291ds︠
pretty_print(p_th0)
︡62736f45-702a-4c03-9b65-3c7f9d721f0d︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1}$</div>"}︡{"done":true}︡
︠414e014d-5aeb-4108-8755-6bb64580bec8s︠
pretty_print(factor(log(f).canonicalize_radical().diff(th1)))
︡77146430-fe2b-4e0b-8825-f5d325702bab︡{"html":"<div align='center'>$\\displaystyle \\left( X, \\mathit{th} \\right) \\ {\\mapsto} \\ -\\frac{{\\left(X e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)} + X - 1\\right)} \\mathit{w1j}}{e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)} + 1}$</div>"}︡{"done":true}︡
︠c2319815-3c16-4398-ae7e-89d2b2659b06s︠
pretty_print(log(f))
︡17b39117-0ea7-4f5e-a9e4-b6084e42a020︡{"html":"<div align='center'>$\\displaystyle \\left( X, \\mathit{th} \\right) \\ {\\mapsto} \\ \\log\\left(\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1}^{-X + 1} {\\left(-\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1} + 1\\right)}^{X}\\right)$</div>"}︡{"done":true}︡
︠7b0c8a85-1646-4556-9407-5a3293326bf7s︠
pretty_print(log(f).canonicalize_radical())
︡0356172f-fc2f-4b75-a61a-dc317f815a14︡{"html":"<div align='center'>$\\displaystyle \\left( X, \\mathit{th} \\right) \\ {\\mapsto} \\ -{\\left(X - 1\\right)} \\mathit{th}_{1} \\mathit{w1j} - {\\left(X - 1\\right)} \\mathit{th}_{2} \\mathit{w2j} - {\\left(X - 1\\right)} \\mathit{th}_{3} \\mathit{w3j} - {\\left(X - 1\\right)} \\mu_{j} - \\log\\left(e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)} + 1\\right)$</div>"}︡{"done":true}︡
︠db4ab8c3-ba62-41b1-bcb1-aa7d5c31bab5s︠
pretty_print(log(f).diff(th1).diff(th2))
︡202909aa-db33-40d6-bde8-b6641cd30df3︡{"html":"<div align='center'>$\\displaystyle \\left( X, \\mathit{th} \\right) \\ {\\mapsto} \\ -\\frac{{\\left(\\frac{X \\mathit{w1j} \\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1}^{-X + 1} {\\left(-\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1} + 1\\right)}^{X - 1} e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)}}{{\\left(e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1\\right)}^{2}} + \\frac{{\\left(X - 1\\right)} \\mathit{w1j} \\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1}^{-X} {\\left(-\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1} + 1\\right)}^{X} e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)}}{{\\left(e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1\\right)}^{2}}\\right)} X \\mathit{w2j} {\\left(-\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1} + 1\\right)}^{X - 1} e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)}}{\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1}^{-X + 1} {\\left(-\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1} + 1\\right)}^{2 \\, X} {\\left(e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1\\right)}^{2}} - \\frac{{\\left(\\frac{X \\mathit{w1j} \\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1}^{-X + 1} {\\left(-\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1} + 1\\right)}^{X - 1} e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)}}{{\\left(e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1\\right)}^{2}} + \\frac{{\\left(X - 1\\right)} \\mathit{w1j} \\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1}^{-X} {\\left(-\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1} + 1\\right)}^{X} e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)}}{{\\left(e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1\\right)}^{2}}\\right)} {\\left(X - 1\\right)} \\mathit{w2j} \\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1}^{-X} e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)}}{\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1}^{-2 \\, X + 2} {\\left(-\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1} + 1\\right)}^{X} {\\left(e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1\\right)}^{2}} + \\frac{\\frac{X \\mathit{w1j} \\mathit{w2j} \\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1}^{-X + 1} {\\left(-\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1} + 1\\right)}^{X - 1} e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)}}{{\\left(e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1\\right)}^{2}} + \\frac{{\\left(X - 1\\right)} \\mathit{w1j} \\mathit{w2j} \\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1}^{-X} {\\left(-\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1} + 1\\right)}^{X} e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)}}{{\\left(e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1\\right)}^{2}} + \\frac{2 \\, {\\left(X - 1\\right)} X \\mathit{w1j} \\mathit{w2j} \\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1}^{-X} {\\left(-\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1} + 1\\right)}^{X - 1} e^{\\left(-2 \\, \\mathit{th}_{1} \\mathit{w1j} - 2 \\, \\mathit{th}_{2} \\mathit{w2j} - 2 \\, \\mathit{th}_{3} \\mathit{w3j} - 2 \\, \\mu_{j}\\right)}}{{\\left(e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1\\right)}^{4}} + \\frac{{\\left(X - 1\\right)} X \\mathit{w1j} \\mathit{w2j} \\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1}^{-X + 1} {\\left(-\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1} + 1\\right)}^{X - 2} e^{\\left(-2 \\, \\mathit{th}_{1} \\mathit{w1j} - 2 \\, \\mathit{th}_{2} \\mathit{w2j} - 2 \\, \\mathit{th}_{3} \\mathit{w3j} - 2 \\, \\mu_{j}\\right)}}{{\\left(e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1\\right)}^{4}} + \\frac{{\\left(X - 1\\right)} X \\mathit{w1j} \\mathit{w2j} \\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1}^{-X - 1} {\\left(-\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1} + 1\\right)}^{X} e^{\\left(-2 \\, \\mathit{th}_{1} \\mathit{w1j} - 2 \\, \\mathit{th}_{2} \\mathit{w2j} - 2 \\, \\mathit{th}_{3} \\mathit{w3j} - 2 \\, \\mu_{j}\\right)}}{{\\left(e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1\\right)}^{4}} - \\frac{2 \\, X \\mathit{w1j} \\mathit{w2j} \\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1}^{-X + 1} {\\left(-\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1} + 1\\right)}^{X - 1} e^{\\left(-2 \\, \\mathit{th}_{1} \\mathit{w1j} - 2 \\, \\mathit{th}_{2} \\mathit{w2j} - 2 \\, \\mathit{th}_{3} \\mathit{w3j} - 2 \\, \\mu_{j}\\right)}}{{\\left(e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1\\right)}^{3}} - \\frac{2 \\, {\\left(X - 1\\right)} \\mathit{w1j} \\mathit{w2j} \\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1}^{-X} {\\left(-\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1} + 1\\right)}^{X} e^{\\left(-2 \\, \\mathit{th}_{1} \\mathit{w1j} - 2 \\, \\mathit{th}_{2} \\mathit{w2j} - 2 \\, \\mathit{th}_{3} \\mathit{w3j} - 2 \\, \\mu_{j}\\right)}}{{\\left(e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1\\right)}^{3}}}{\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1}^{-X + 1} {\\left(-\\frac{1}{e^{\\left(-\\mathit{th}_{1} \\mathit{w1j} - \\mathit{th}_{2} \\mathit{w2j} - \\mathit{th}_{3} \\mathit{w3j} - \\mu_{j}\\right)} + 1} + 1\\right)}^{X}}$</div>"}︡{"done":true}︡
︠bc3c9117-d31a-4122-88aa-0b1a2d54626fs︠
pretty_print(factor(log(f).diff(th1).diff(th2)))
︡75b0ee73-f622-4504-bfcd-959eddde9a58︡{"html":"<div align='center'>$\\displaystyle \\left( X, \\mathit{th} \\right) \\ {\\mapsto} \\ -\\frac{\\mathit{w1j} \\mathit{w2j} e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)}}{{\\left(e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)} + 1\\right)}^{2}}$</div>"}︡{"done":true}︡
︠f8bc9605-461a-43d2-8677-bcc8190a98f9so︠
ll(th1, th2) = log(f).canonicalize_radical()
pretty_print(ll.hessian()(th1, th2))
︡73ab8a6d-532c-4dec-a6a1-6f5bbf1f1354︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\n-\\frac{\\mathit{w1j}^{2} e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)}}{e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)} + 1} + \\frac{\\mathit{w1j}^{2} e^{\\left(2 \\, \\mathit{th}_{1} \\mathit{w1j} + 2 \\, \\mathit{th}_{2} \\mathit{w2j} + 2 \\, \\mathit{th}_{3} \\mathit{w3j} + 2 \\, \\mu_{j}\\right)}}{{\\left(e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)} + 1\\right)}^{2}} &amp; -\\frac{\\mathit{w1j} \\mathit{w2j} e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)}}{e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)} + 1} + \\frac{\\mathit{w1j} \\mathit{w2j} e^{\\left(2 \\, \\mathit{th}_{1} \\mathit{w1j} + 2 \\, \\mathit{th}_{2} \\mathit{w2j} + 2 \\, \\mathit{th}_{3} \\mathit{w3j} + 2 \\, \\mu_{j}\\right)}}{{\\left(e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)} + 1\\right)}^{2}} \\\\\n-\\frac{\\mathit{w1j} \\mathit{w2j} e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)}}{e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)} + 1} + \\frac{\\mathit{w1j} \\mathit{w2j} e^{\\left(2 \\, \\mathit{th}_{1} \\mathit{w1j} + 2 \\, \\mathit{th}_{2} \\mathit{w2j} + 2 \\, \\mathit{th}_{3} \\mathit{w3j} + 2 \\, \\mu_{j}\\right)}}{{\\left(e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)} + 1\\right)}^{2}} &amp; -\\frac{\\mathit{w2j}^{2} e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)}}{e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)} + 1} + \\frac{\\mathit{w2j}^{2} e^{\\left(2 \\, \\mathit{th}_{1} \\mathit{w1j} + 2 \\, \\mathit{th}_{2} \\mathit{w2j} + 2 \\, \\mathit{th}_{3} \\mathit{w3j} + 2 \\, \\mu_{j}\\right)}}{{\\left(e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)} + 1\\right)}^{2}}\n\\end{array}\\right)$</div>"}︡{"done":true}︡
︠28da98d0-c828-4aaa-9f0c-57ba6a6f9447so︠
bool(Phi.diff(x)(x) == Phi(x) * (1 - Phi(x)))
︡89030a34-4774-45a7-a1fb-e05a8e1a454b︡{"stdout":"True\n"}︡{"done":true}︡
︠78339d71-ffbd-4c84-b989-ad7c9e79a534s︠
latex(factor(log(f).diff(th1).diff(th2)))
︡2f5371e2-1913-464c-bbd3-9524264247db︡{"stdout":"\\left( X, \\mathit{th} \\right) \\ {\\mapsto} \\ -\\frac{\\mathit{w1j} \\mathit{w2j} e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)}}{{\\left(e^{\\left(\\mathit{th}_{1} \\mathit{w1j} + \\mathit{th}_{2} \\mathit{w2j} + \\mathit{th}_{3} \\mathit{w3j} + \\mu_{j}\\right)} + 1\\right)}^{2}}\n"}︡{"done":true}︡
︠259b59ad-0bfd-40ad-9c85-59bf61dcac5d︠








