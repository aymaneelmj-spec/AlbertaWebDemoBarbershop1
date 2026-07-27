'use client';
import { useState, useEffect, useRef } from 'react';
import { Volume2, VolumeX } from 'lucide-react';

export default function AudioPlayer() {
  const [isMuted, setIsMuted] = useState(false);
  const audioRef = useRef(null);

  useEffect(() => {
    const audio = audioRef.current;
    if (!audio) return;

    // Attempt to play after 2 seconds
    const audioTimer = setTimeout(() => {
      audio.play().catch(() => {
        // If blocked, listen for the absolute first interaction on the window
        const startAudio = () => {
          audio.play().catch(e => console.log("Still blocked", e));
          window.removeEventListener('click', startAudio);
          window.removeEventListener('touchstart', startAudio);
          window.removeEventListener('keydown', startAudio);
          window.removeEventListener('scroll', startAudio);
        };
        window.addEventListener('click', startAudio);
        window.addEventListener('touchstart', startAudio);
        window.addEventListener('keydown', startAudio);
        window.addEventListener('scroll', startAudio, { passive: true });
      });
    }, 2000);

    return () => clearTimeout(audioTimer);
  }, []);

  useEffect(() => {
    if (audioRef.current) {
      audioRef.current.muted = isMuted;
    }
  }, [isMuted]);

  return (
    <>
      <audio ref={audioRef} src="/audiobarber.wav" loop preload="auto" />
      <button 
        onClick={() => setIsMuted(!isMuted)} 
        className="fixed bottom-5 right-5 z-[60] bg-dark2 p-3 rounded-full border border-gold/30 text-gold hover:bg-gold hover:text-black transition-colors shadow-lg"
      >
        {isMuted ? <VolumeX size={24} /> : <Volume2 size={24} />}
      </button>
    </>
  );
}
