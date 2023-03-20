require_relative '../lib/music_tracker'

RSpec.describe MusicTracker do
  it "returns a track when one track added" do
    music_library = MusicTracker.new
    music_library.listen_to("song one")
    expect(music_library.view_tracks).to eq ["song one"]
  end

  it "returns list of tracks when multiple tracks added" do
    music_library = MusicTracker.new
    music_library.listen_to("song one")
    music_library.listen_to("song two")
    expect(music_library.view_tracks).to eq ["song one", "song two"]
  end

  it "fails when no tracks listed" do
    music_library = MusicTracker.new
    expect{ music_library.view_tracks }.to raise_error "No tracks listened to."
  end

  it "fails when a non-string value is added" do
    music_library = MusicTracker.new
    expect{ music_library.listen_to(12) }. to raise_error "Track must be a string."
  end
end
