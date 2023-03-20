class MusicTracker
  def initialize
    @track_list = []
  end

  def listen_to(track)
    fail "Track must be a string." if !track.is_a? String
    @track_list << track
  end

  def view_tracks
    fail "No tracks listened to." if @track_list.empty?
    @track_list
  end
end
