import * as rpc from 'vscode-ws-jsonrpc'
import * as server from 'vscode-ws-jsonrpc/lib/server'
import { InitializeRequest } from 'vscode-languageserver'
import { resolve } from 'path'

const isInitializeRequest = (message: rpc.RequestMessage) =>
  message.method === InitializeRequest.type.method

export const launch = (socket: rpc.IWebSocket) => {
  const reader = new rpc.WebSocketMessageReader(socket)
  const writer = new rpc.WebSocketMessageWriter(socket)

  const socketConnection = server.createConnection(reader, writer, () =>
    socket.dispose()
  )
  const serverConnection = server.createServerProcess(
    'Lua',
    '/Users/danielbaranowski/.asdf/shims/lua-language-server',
    [
      "--configpath=/Users/danielbaranowski/Workspace/monaco-lua-example/server/luarc.json",
      "--config-path=/Users/danielbaranowski/Workspace/monaco-lua-example/server/luarc.json",
    ],
  )
  server.forward(socketConnection, serverConnection, (message) => {
    if (rpc.isRequestMessage(message) && isInitializeRequest(message)) {
      message.params.processId = process.pid
    }
    return message
  })
}
