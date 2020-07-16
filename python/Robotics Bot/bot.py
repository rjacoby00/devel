# bot.py
import os

import discord
from dotenv import load_dotenv

load_dotenv()
TOKEN = os.getenv('DISCORD_TOKEN')

spam = False;

class MyClient(discord.Client):
    async def on_ready(self):
        print('Logged in as')
        print(self.user.name)
        print(self.user.id)
        print('-------------')
    
    async def on_message(self, message):
        global spam
        if message.author == self.user:
            return
    
        print(message.content)
        print(message.channel)
        print(message.guild)
    
        if (message.guild == 'LL Discord Bots'):
            print('Message from Hack Club Server!')
        
        if message.content == 'toggle':
            spam = not spam
        elif message.content == 'Hi there bot!':
            await message.channel.send('Hi there human...')
        elif message.content == 'shh, super secret command':
            await message.channel.send("...you're not supposed to know about this")
        elif spam:
            await message.channel.send('Join the Las Lomas Robotics Club!')
client = MyClient()        
client.run(TOKEN)