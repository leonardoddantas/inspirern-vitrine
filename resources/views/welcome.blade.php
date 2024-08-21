<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
</head>
<body>

  {{-- Header --}}
  <header class="relativa h-[90vh] bg-cover bg-center" style="background-image: url('{{ asset('img/brackground-image-header-beach.jpg') }}');">
    <div class="absolute w-full h-[90vh] bg-black opacity-65"></div>
    <div class="relative z-10 container mx-auto px-4 h-full">
      <nav class="flex flex-row items-center justify-between h-20 text-xl text-slate-50">
        <a href="http://">Logo</a>
        <ul class="flex flex-row items-center justify-center space-x-4">
          <li class="hover:text-blue-950 hover:font-semibold hover:underline"><a href="http://">Home</a></li>
          <li class="hover:text-blue-950 hover:font-semibold hover:underline"><a href="http://">Restaurantes</a></li>
          <li class="hover:text-blue-950 hover:font-semibold hover:underline"><a href="http://">Pontos Turistícos</a></li>
          <li class="hover:text-blue-950 hover:font-semibold hover:underline"><a href="http://">Hospedagens</a></li>
          <li class="hover:text-blue-950 hover:font-semibold hover:underline"><a href="http://">Cidades</a></li>
        </ul>
      </nav>

      <div class="mt-40 text-slate-50">
        <h1 class="text-6xl font-medium mb-4 tracking-wide">Conheça o Paraíso Potiguar!</h1>
        <p class="text-lg mb-8 tracking-normal">Explore as maravilhas do Rio Grande do Norte! Mergulhe em cultura, aventura e paisagens incríveis.</p>

          <form class="flex flex-row p-8 bg-blue-950 rounded z-20 text-lg text-slate-950 space-x-4 shadow-lg">
            <input type="text" placeholder="Nome de um negócio" class="w-2/5 p-2 rounded flex-grow shadow-sm">
            
            <select placeholder="Categoria" class="w-1/5 p-2 rounded flex-grow shadow-sm">
              <option value="">Selecione uma categoria</option>
              <option value="restaurante">Restaurantes</option>
              <option value="hospedagem">Hospedagens</option>
              <option value="ponto_turistico">Ponto Turístico</option>
            </select>
            
            <select placeholder="Cidade" class="w-1/5 p-2 rounded flex-grow shadow-sm">
              <option value="">Selecione uma cidade</option>
              <option value="natal">Natal</option>
              <option value="caico">Caicó</option>
              <option value="mossoro">Mossoró</option>
            </select>

            <button type="submit" class="bg-blue-700 text-white px-4 py-2 rounded flex-grow shadow-md hover:bg-blue-800 hover:shadow-lg transform hover:scale-105 transition">Pesquisar</button>
          </form>
      </div>
    </div>
  </header>

  {{-- Main --}}
  <main class="pt-28 bg-gray-50">
    <div class="relative z-10 container mx-auto px-4 h-full">

      {{-- Lugares Populares --}}
      <section class="mb-28">
        <h2 class="mb-2 text-4xl text-center font-normal tracking-wide">Lugares Populares</h2>
        <p class="mb-10 text-center">Confira os destinos mais bem avaliados!</p>

        <div class="flex flex-row items-center justify-between">
          <span class="cursor-pointer text-3xl hover:text-blue-800 transform hover:scale-125 transition duration-300 select-none"><</span>
          <img src="{{asset('img/lugares-populares-1.jpg')}}" alt="Imagem de duas pessoas tomando banhos em uma praia." class="w-72 h-96 object-cover rounded shadow-lg">
          <img src="{{asset('img/lugares-populares-2.jpg')}}" alt="Imagem de uma praia com um rocha no fundo." class="w-72 h-96 object-cover rounded shadow-lg">
          <img src="{{asset('img/lugares-populares-5.jpg')}}" alt="Imagem do morro do careca em Natl-RN." class="w-72 h-96 object-cover rounded shadow-lg">
          <img src="{{asset('img/lugares-populares-6.jpg')}}" alt="Imagens de placas e o mar de fundo." class="w-72 h-96 object-cover rounded shadow-lg">
          <span class="cursor-pointer text-3xl hover:text-blue-800 transform hover:scale-125 transition duration-300 select-none">></span>
        </div>
      </section>

      {{-- Onde nós vamos? --}}
      <section class="p-10 mb-28 bg-gray-100 rounded shadow-lg">
        <h2 class="mb-10 text-4xl text-center font-normal tracking-wide">Onde Nós Vamos</h2>

        <div class="flex flex-row space-x-20">
          <div class="w-1/2">
            <p class="mb-4 text-justify indent-6">O Rio Grande do Norte é um destino encantador, repleto de belezas naturais e uma rica história cultural. Com suas praias paradisíacas, dunas douradas e águas cristalinas, o estado se destaca como um dos principais destinos turísticos do Brasil. Cada cidade tem seu charme único, desde a capital Natal até as joias escondidas no interior.</p>
            
            <p class="mb-4 text-justify indent-6">A capital, Natal, conhecida como a "Cidade do Sol", oferece uma combinação perfeita entre história e natureza. O turista pode se encantar com o Forte dos Reis Magos, as belezas da Praia de Ponta Negra e os passeios de buggy pelas dunas de Genipabu, que são verdadeiras aventuras no deserto brasileiro.</p>
            
            <img src="{{asset('img/natal-setion-where-are-we-go.jpg')}}" alt="Imagem do morro do careca em Natal-RN" class="w-full rounded shadow-md">
          </div>

          <div class="w-1/2">
            <img src="{{asset('img/map_setion_where_are_we_go.png')}}" alt="Mapa do Rio Grande do Norte" class="w-full rounded shadow-md mb-4">
            
            <p class="mb-4 text-justify indent-6">Além das paisagens deslumbrantes, o Rio Grande do Norte oferece uma experiência completa para quem busca aventura, gastronomia e cultura local. Suas praias são perfeitas para relaxar, enquanto os festivais culturais e a hospitalidade do povo potiguar tornam a visita ainda mais especial. Venha descobrir esse paraíso e se surpreender a cada esquina.</p>
            
            <p class="text-justify indent-6">No interior, cidades como Mossoró e Caicó têm muito a oferecer em termos de cultura e tradição. Festas populares, como o São João de Mossoró e a Festa de Sant’Ana em Caicó, são exemplos de como a cultura potiguar é vibrante e autêntica, atraindo visitantes de todos os lugares. Além disso, essas cidades possuem uma gastronomia rica e peculiar, marcada por pratos típicos que refletem a história e a herança local.</p>
          </div>
        </div>
      </section>


      {{-- Veja o que as pessoas tão falando --}}
      <section class=" mb-28 rounded">
        <h2 class="mb-10 text-4xl text-center font-normal tracking-wide">Veja o que as pessoas tão falando</h2>

        <div class="flex flex-row space-x-8 h-[80vh]">
          <div class="w-1/2">
            <img src="{{asset('img/person-setion-comentars.webp')}}" alt="Imagem de uma mulher" class="w-full h-full object-cover rounded">
          </div>

          <div class="flex flex-col items-center justify-center space-y-2 w-1/2 p-10 bg-gray-100 rounded shadow-lg">
            <p>24.05.2024</p>
            <h3 class="mb-10 text-3xl font-medium tracking-wide">Bruna Silva</h3>
            <span class="w-full h-[0.2rem] rounded bg-zinc-950"></span>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptate possimus nulla ducimus culpa magni expedita.</p>
          </div>
        </div>
      </section>

      {{-- Anuncie no INSPIRERN --}}
      <section class="h-auto p-10 mb-28 bg-gray-100 rounded shadow-lg">
        <h2 class="mb-6 text-3xl font-normal tracking-wide">Anuncie no INSPIRERN</h2>
        <p class="mb-6">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptate possimus nulla ducimus culpa magni expedita, unde velit optio quibusdam qui quis rem voluptas, numquam labore adipisci ipsa dolorem atque eos. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptate possimus nulla ducimus culpa magni expedita, unde velit optio quibusdam qui quis rem voluptas, numquam labore adipisci ipsa dolorem atque eos.</p>

        <div class="flex flex-wrap gap-4">
          <a href="http://" class="flex-1 p-5 text-center text-lg rounded bg-gray-200 shadow-lg hover:bg-blue-900 hover:text-white hover:shadow-lg transform hover:scale-105 transition">Restaurante</a>
          <a href="http://" class="flex-1 p-5 text-center text-lg rounded bg-gray-200 shadow-lg hover:bg-blue-900 hover:text-white hover:shadow-lg transform hover:scale-105 transition">Hospedagem</a>
          <a href="http://" class="flex-1 p-5 text-center text-lg rounded bg-gray-200 shadow-lg hover:bg-blue-900 hover:text-white hover:shadow-lg transform hover:scale-105 transition">Ponto Turístico</a>
          <a href="http://" class="flex-1 p-5 text-center text-lg rounded bg-gray-200 shadow-lg hover:bg-blue-900 hover:text-white hover:shadow-lg transform hover:scale-105 transition">Passeio</a>
        </div>
      </section>

     {{-- Galeria --}}
<section class="pb-28">
  <h2 class="mb-10 text-4xl text-center font-normal tracking-wide">Galeria</h2>

  <div class="h-screen grid grid-cols-3 grid-rows-3 gap-4">
    <!-- Imagem 1: Ocupa 2 colunas e 1 linha -->
    <img src="{{asset('img/brackground-image-header-beach.jpg')}}" alt="Imagem de duas pessoas tomando banho em uma praia." class="w-full h-full object-cover rounded shadow-lg row-start-1 row-end-2">

    <!-- Imagens 2 e 3: Ocupam 1 coluna e 1 linha cada -->
    <img src="{{asset('img/brackground-image-header-beach.jpg')}}" alt="Imagem de uma praia com uma rocha no fundo." class="w-full h-full object-cover rounded shadow-lg row-start-1 row-end-2">
    <img src="{{asset('img/brackground-image-header-beach.jpg')}}" alt="Imagem do morro do careca em Natal-RN." class="w-full h-full object-cover rounded shadow-lg row-start-1 row-end-2">

    <!-- Imagens 4 e 5: Ocupam 1 coluna e 1 linha cada -->
    <img src="{{asset('img/brackground-image-header-beach.jpg')}}" alt="Imagens de placas e o mar de fundo." class="w-full h-full object-cover rounded shadow-lg row-start-2 row-end-3">
    <img src="{{asset('img/brackground-image-header-beach.jpg')}}" alt="Imagens de placas e o mar de fundo." class="w-full h-full object-cover rounded shadow-lg row-start-2 row-end-3">

    <!-- Imagem 6: Ocupa 2 linhas e 1 coluna -->
    <img src="{{asset('img/brackground-image-header-beach.jpg')}}" alt="Imagens de placas e o mar de fundo." class="w-full h-full object-cover rounded shadow-lg row-start-2 row-end-4">

    <!-- Imagem 7: Ocupa 1 coluna e 1 linha -->
    <img src="{{asset('img/brackground-image-header-beach.jpg')}}" alt="Imagens de placas e o mar de fundo." class="w-full h-full object-cover rounded shadow-lg row-start-3 row-end-4 col-start-1 col-end-3">
  </div>
</section>


    </div>
  </main>

  <footer class="bg-gray-900 text-white py-10">
    <div class="container mx-auto grid grid-cols-1 md:grid-cols-3 gap-8">
      <!-- Sobre nós -->
      <div>
        <h3 class="text-xl font-semibold mb-4">Sobre Nós</h3>
        <p class="text-gray-400">O INSPIRERN é sua plataforma de referência para explorar os melhores destinos, restaurantes e hospedagens no Rio Grande do Norte. Descubra o que torna o nosso estado um dos mais encantadores do Brasil.</p>
      </div>

      <!-- Links rápidos -->
      <div>
        <h3 class="text-xl font-semibold mb-4">Links Rápidos</h3>
        <ul class="text-gray-400 space-y-2">
          <li><a href="#" class="hover:text-white transition">Início</a></li>
          <li><a href="#" class="hover:text-white transition">Destinos</a></li>
          <li><a href="#" class="hover:text-white transition">Restaurantes</a></li>
          <li><a href="#" class="hover:text-white transition">Hospedagem</a></li>
        </ul>
      </div>

      <!-- Ajudar -->
      <div>
        <h3 class="text-xl font-semibold mb-4">Precisa de ajudar?</h3>
        <ul class="text-gray-400 space-y-2">
          <li><p>(00) 00000-0000</p></li>
          <li><p>inspirern@gmail.com</p></li>
          <li><p>CNPJ: 00.000.000/0000-00</p></li>
          <li><p>Rua Desembargador Ferreira Mendes,<br>233 - Sala 43 - Edifício Master Center<br>Centro Norte - Cuiabá - Mato Grosso - <br>CEP: 78020-200</p></li>
        </ul>
      </div>
    </div>

    <div class="mt-10 text-center text-gray-600">
      <p>&copy; 2024 INSPIRERN. Todos os direitos reservados.</p>
    </div>
  </footer>

</body>
</html>