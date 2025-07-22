import { Injectable } from '@angular/core';
import { Socket } from 'ngx-socket-io';

@Injectable()
export class MeTubeSocket extends Socket {
  constructor() {
    super({
      url: 'http://localhost:8081', // Servidor Python
      options: {
        path: '/socket.io',
        transports: ['websocket'], // Opcional
      },
    });
  }
}
