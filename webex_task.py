import os
from webexteamssdk import WebexTeamsAPI

access_token = os.getenv("WEBEX_ACCESS_TOKEN")
api = WebexTeamsAPI(access_token=access_token)

# Example: List rooms
rooms = api.rooms.list()
for room in rooms:
    print(f"Room: {room.title}")