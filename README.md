<h1 align="center">NWL Heat</h1>

<p align="center">
  <img alt="Feedget" src=".github/banner.png" width="100%">
</p>

## Project

In this project was developed a web application and a mobile application where users can comment about your expectations to event Do While 2021. The user needs to sign in with GitHub to can send messages. The user can accompany in real time the messages send by another users. Every day it is execute a Elixir routine to generate a words cloud from words message sent.

## Features

- Sign in with GitHub;
- Update messages list in real time with Web Socket;
- Scheduled Elixir routine;

## Technologies and Libraries

General:

- [Node.JS v16.13.0](https://nodejs.org/en/)
- [NPM 8.1.0](https://www.npmjs.com/)
- [Visual Studio Code 1.62.0](https://code.visualstudio.com/)

Back-end with Node.JS and TypeScript:

- Express
- Cors
- [axios](https://www.npmjs.com/package/axios)
- Prisma
- [Json Web Token](https://www.npmjs.com/package/jsonwebtoken)
- Socket IO

Web application with React JS and TypeScript:

- [Vite](https://vitejs.dev/#overview)
- [axios](https://www.npmjs.com/package/axios)
- Socket IO Client

Mobile application with Expo and TypeScript:

- Expo 5.0.3
- Socket IO Client
- [axios](https://www.npmjs.com/package/axios)
- Expo Auth Session
- React Native Iphone X Helper

## Mobile devices used in mobile application development

- Android (Physical): API 27
- Android (Emulator): API 30

## Layout

You can view the project layout through this [link](https://www.figma.com/file/KiXMhQjOcCXaB2gkd5Ukc1/%5BNLW-Heat---Mission%3A-Impulse%5D-DoWhile2021-(Community)?node-id=2%3A3). Figma account is required to access it.

## Database

<p align="center">
  <img alt="Database" src=".github/database.png" width="100%">
</p>

## How to run

### Server

- Access backend folder;
- Install dependencies with `npm install`;
- Create file .env in the directory backend_node;
- Insert `GITHUB_CLIENT_SECRET=` in the file backend_node\.env;
- Insert `GITHUB_CLIENT_ID=` in the file backend_node\.env;
- Insert `JWT_SECRET=892186d8310a0b40511c47f30d50a76b` in the file backend_node\.env;

### Web Application

- Create a new OAuth App in [GitHub](github.com/) with `Homepage URL: http://localhost:4000` and `Authorization callback URL: http://localhost:3000`;
- Access backend folder;
- Update value of parameter `GITHUB_CLIENT_ID=` with the new Client ID, the parameter is in the file backend_node\.env;
- Update value of parameter `GITHUB_CLIENT_SECRET=` with the new Client secret, the parameter is in the file backend_node\.env;
- Execute command `npm run dev`;
- Access frontend folder;
- Install dependencies with `npm install`;
- Execute command `npm run dev`;

### Mobile Application

- Create a new OAuth App in [GitHub](github.com/) with `Homepage URL: https://auth.expo.io/@arthurtimoteo/mobile-reactnative` and `Authorization callback URL: https://auth.expo.io/@arthurtimoteo/mobile-reactnative`;
- Access backend folder;
- Press `Ctrl + c` twice to stop the server;
- Update value of parameter `GITHUB_CLIENT_ID=` with the new Client ID, the parameter is in the file backend_node\.env;
- Update value of parameter `GITHUB_CLIENT_SECRET=` with the new Client secret, the parameter is in the file backend_node\.env;
- Execute command `npm run dev`;
- Access mobile folder;
- Install dependencies with `npm install`;
- Update value of parameter `CLIENT_ID`  with the new Client ID, the parameter is in the file mobile_reactnative\src\hooks\auth.tsx;
- Update value of parameter `baseURL` with `http://` ip of your machine `:4000`, the parameter is in the file mobile_reactnative\src\services\api.ts;
- Execute command `expo start`;
- To execute mobile aplication in the a physical cellphone install Expo Go or use a emulator;

### Elixir

- Access backend folder;
- Press `Ctrl + c` twice to stop the server;
- Access elixir folder;
- Execute `mix deps.get` to install dependencies;
- Execute `mix ecto.create` to create a database;
- Execute `mix ecto.migrate` to run migration;
- Execute `mix phx.server` to start;
- Insert some MESSAGES by `http://localhost:4000/api/message`;

## License

This project is under the MIT license. See the [LICENSE](LICENSE.md) file for more details.