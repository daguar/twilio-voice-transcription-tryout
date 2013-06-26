class VoiceTranscriptionsController < ApplicationController
  before_action :set_voice_transcription, only: [:show, :edit, :update, :destroy]

  # GET /voice_transcriptions
  # GET /voice_transcriptions.json
  def index
    @voice_transcriptions = VoiceTranscription.all
  end

  def ask_for_response
    twilio_response = Twilio::TwiML::Response.new do |r|
      r.Say "Say something and I'll transcribe it, yo", :voice => 'man'
      r.Record :transcribeCallback => '/voice_transcriptions'
    end
    render :inline => twilio_response.text
  end

  # POST /voice_transcriptions
  # POST /voice_transcriptions.json
  def create
    VoiceTranscription.create!(:content => params["TranscriptionText"])
    render :nothing => true
  end

  # DELETE /voice_transcriptions/1
  # DELETE /voice_transcriptions/1.json
  def destroy
    @voice_transcription.destroy
    respond_to do |format|
      format.html { redirect_to voice_transcriptions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voice_transcription
      @voice_transcription = VoiceTranscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voice_transcription_params
      params.require(:voice_transcription).permit(:content)
    end
end
