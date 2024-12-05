# N3 - Login federado com Google
Desenvolvimento de Aplicativos Mobile. Engenharia de Software

## Integrantes do Grupo
- Gabriel Forster Rocha
- Nicolas Kasteller Wajima
- Pablo Arman Schuler

## Proposta de Desenvolvimento
App com autenticação em Provedor do Firebase

- Objetivo: Fazer um login em app com login social do firebase.

## Versão Mínima do SDK
- minSdkVersion: 23

## Atualmente, projeto:

1. Páginas de interação com a entrada social google:


| <p align="center">Login</p> | <p align="center">Home</p> |
| ----- | ----- |
| <img src="" />  | <img src="" />  |

## Funcionalidades por Tela

### Tela de Login
- Botão para login com Google

### Tela Home
- Informações do usuário (nome e foto de perfil)
- Botão de Logout

## Tipos de Erros do Provedor Escolhido (Google)
- `sign_in_canceled`: Usuário cancelou o login.
- `network_error`: Erro de rede durante o login.
- `account_exists_with_different_credential`: A conta já existe com uma credencial diferente.
- `invalid_credential`: Credencial fornecida é inválida.
- `user_disabled`: Conta do usuário foi desativada.
- `operation_not_allowed`: Operação não é permitida.
- `invalid_verification_code`: Código de verificação é inválido.
- `invalid_verification_id`: ID de verificação é inválido.

## Dependências Utilizadas
  cupertino_icons: ^1.0.8
  flutter_signin_button: ^2.0.0
  google_fonts: ^6.1.0
  iconly: ^1.0.1
  firebase_core: ^2.17.0
  firebase_auth: ^4.7.2
  google_sign_in: ^6.1.4

## Instruções para Configuração/Importação do Projeto

### Pré-requisitos
- Flutter SDK: ^3.24.5
- Dart SDK: ^3.5.4
- Android Studio
- Android SDK: ^21

### Passos para Configuração
1. Clone o repositório:
 ```
   git clone https://github.com/gabrielforster/n3-mobile
 ```
2. Navegue até o diretório do projeto:
 ```
  cd n3-mobile
 ```
3. Instale as dependências:
 ```
  flutter pub get
 ```
4. Execute o projeto:
 ```
 flutter run
 ```

## Projeto rodando
<video src="" />
