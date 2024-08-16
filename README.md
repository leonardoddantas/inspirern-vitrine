# 🌍 Vitrine de Turismo do Rio Grande do Norte 🌴

## Descrição
Bem-vindo à Vitrine de Turismo do Rio Grande do Norte! Este projeto tem como objetivo proporcionar aos usuários uma maneira fácil e intuitiva de navegar pelos pontos turísticos, restaurantes, pousadas e demais negócios cadastrados no Rio Grande do Norte. A vitrine faz uso dos dados já existentes na [Plataforma de Turismo do Rio Grande do Norte](https://github.com/leonardoddantas/plataforma-inspirern), permitindo a visualização dos locais sem a necessidade de cadastro.

## Funcionalidades
- **🗺️ Navegação Intuitiva**: Explore facilmente os pontos turísticos e negócios cadastrados.
- **🔎 Filtros Avançados**: Filtre locais por categoria, como restaurantes, pousadas, e mais.
- **📍 Mapa Interativo**: Visualize os pontos turísticos em um mapa integrado.
- **📷 Galeria de Imagens**: Veja fotos dos locais cadastrados.
- **🔗 Integração com a Plataforma Principal**: Consome o mesmo banco de dados da plataforma principal, exibindo os dados atualizados em tempo real.

## Tecnologias Utilizadas
- **💻 Frontend**: HTML, CSS, JavaScript
- **🔧 Backend**: PHP, Laravel
- **💾 Banco de Dados**: Compartilhado com a Plataforma de Turismo

## Requisitos
* PHP 8.2 ou superior
* Composer
* Node.js 20 ou superior
* Acesso ao banco de dados da plataforma principal

## Instalação
Para rodar este projeto localmente, siga os passos abaixo:

1. Clone o repositório

   ```bash
   git clone https://github.com/leonardoddantas/inspirern-vitrine.git

3. Navegue até o diretório do projeto
    ```bash
   cd inspirern-vitrine

4. Instale as dependências do projeto
    ```bash
    composer install

5. Gere a chave da aplicação
     ```bash
     php artisan key:generate

6. Execute as migrações para criar as tabelas no banco de dados
   ```bash
   php artisan migrate

7. Instale as dependências do npm
   ```bash
   npm install

8. Compile os assets
   ```bash
   npm run dev

9. Inicie o servidor de desenvolvimento
   ```bash
    php artisan serve

10. Acesse o projeto no navegador
    ```bash
    http://127.0.0.1:8000/ 
