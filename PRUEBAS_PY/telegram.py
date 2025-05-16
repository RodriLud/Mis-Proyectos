from telethon import TelegramClient 
import os

# Credenciales de la API de Telegram
api_id = 'TU_API_ID'        # Reemplaza con tu API ID
api_hash = 'TU_API_HASH'    # Reemplaza con tu API Hash
phone = 'TU_NUMERO_TELEFONICO'  # Reemplaza con tu número telefónico registrado en Telegram

# Directorio donde se guardarán los videos
output_dir = 'videos_telegram'
if not os.path.exists(output_dir):
    os.makedirs(output_dir)

# Función principal
async def download_videos_from_chat(chat_username):
    async with TelegramClient('session_name', api_id, api_hash) as client:
        # Asegúrate de estar autenticado
        if not await client.is_user_authorized():
            await client.send_code_request(phone)
            await client.sign_in(phone, input("Ingresa el código de Telegram: "))

        # Busca el chat/canal
        chat = await client.get_entity(chat_username)
        print(f"Descargando videos del chat: {chat.title}")

        async for message in client.iter_messages(chat, filter=TelegramClient.MessageFilter.Videos):
            if message.video:
                # Nombre del archivo de video
                video_path = os.path.join(output_dir, f"{message.id}.mp4")
                print(f"Descargando: {video_path}")
                await message.download_media(file=video_path)

        print("Descarga completa.")

# Ejecución
if __name__ == "__main__":
    import asyncio

    # Username o ID del chat/canal
    chat_username = input("Introduce el username del chat/canal (sin @): ")
    asyncio.run(download_videos_from_chat(chat_username))
