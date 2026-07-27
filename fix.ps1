# fix15.ps1
# Right-click this file and select "Run with PowerShell"

 $css = @"
@import url('https://fonts.googleapis.com/css2?family=Cinzel:wght@400;700;900&family=Poppins:wght@300;400;500;600&display=swap');
@tailwind base; @tailwind components; @tailwind utilities;
body { font-family: 'Poppins', sans-serif; background: #0a0a0a; color: #fff; overflow-x: hidden; -webkit-tap-highlight-color: transparent; }
h1,h2,h3,.font-cinzel { font-family: 'Cinzel', serif; }
.btn-3d { background: linear-gradient(180deg, #e6c247 0%, #c9981b 100%); color: #111; padding: 18px 45px; border-radius: 8px; font-family: 'Cinzel', serif; font-weight: 700; font-size: 1.1rem; text-transform: uppercase; letter-spacing: 2px; box-shadow: 0 6px 0 #8a6a14, 0 12px 20px rgba(0,0,0,0.5); transition: all 0.15s ease; display: inline-block; cursor: pointer; border: none; }
.btn-3d:hover { transform: translateY(2px); box-shadow: 0 4px 0 #8a6a14, 0 8px 15px rgba(0,0,0,0.6); }
.btn-3d:active { transform: translateY(6px); box-shadow: 0 0 0 #8a6a14, 0 2px 5px rgba(0,0,0,0.5); }
.input-field { background: #141414; border: 1px solid #333; padding: 14px; border-radius: 6px; color: #fff; width: 100%; outline: none; transition: border 0.3s; font-family: 'Poppins', sans-serif; }
.input-field:focus { border-color: #d4af37; }
.hero-bg { background-image: url('/mainBackground.jpg'); background-size: cover; background-position: center; }
@media (max-width: 768px) { .hero-bg { background-image: url('/mainBackgroundMobile.jpg') !important; } }
.no-scrollbar::-webkit-scrollbar { display: none; }
.no-scrollbar { -ms-overflow-style: none; scrollbar-width: none; }
"@
Set-Content -Path "app\globals.css" -Value $css -Encoding UTF8 -Force

 $navbar = @"
'use client';
import { useState, useEffect } from 'react';
import Link from 'next/link';
export default function Navbar() {
  const [open, setOpen] = useState(false);
  const [show, setShow] = useState(true);
  const [lastScrollY, setLastScrollY] = useState(0);
  useEffect(() => {
    const controlNavbar = () => {
      if (typeof window !== 'undefined') {
        if (window.scrollY > lastScrollY && window.scrollY > 100) { setShow(false); } 
        else { setShow(true); }
        setLastScrollY(window.scrollY);
      }
    };
    window.addEventListener('scroll', controlNavbar);
    return () => window.removeEventListener('scroll', controlNavbar);
  }, [lastScrollY]);
  return (
    <nav className={`fixed w-full bg-black/80 backdrop-blur-md z-50 border-b border-gold/20 transition-transform duration-300 ${show ? 'translate-y-0' : '-translate-y-full'}`}>
      <div className="max-w-7xl mx-auto flex justify-between items-center p-5">
        <Link href="/" className="text-2xl font-bold text-gold font-cinzel">FADED<span className="text-white ml-2">BARBERSHOP</span></Link>
        <div className="hidden md:flex gap-8 items-center">
          <Link href="/" className="hover:text-gold transition">Home</Link>
          <Link href="/#services" className="hover:text-gold transition">Services</Link>
          <Link href="/book" className="btn-3d !py-2 !px-6 !text-sm">Book Now</Link>
        </div>
        <button className="md:hidden text-gold text-2xl" onClick={() => setOpen(!open)}>☰</button>
      </div>
      {open && (
        <div className="md:hidden absolute top-full left-0 w-full bg-black/95 backdrop-blur-md flex flex-col items-center gap-6 py-8 border-b border-gold/20">
          <Link href="/" onClick={()=>setOpen(false)} className="text-white text-lg hover:text-gold transition">Home</Link>
          <Link href="/#services" onClick={()=>setOpen(false)} className="text-white text-lg hover:text-gold transition">Services</Link>
          <Link href="/book" onClick={()=>setOpen(false)} className="btn-3d !py-2 !px-6 !text-sm">Book Now</Link>
        </div>
      )}
    </nav>
  );
}
"@
Set-Content -Path "components\Navbar.jsx" -Value $navbar -Encoding UTF8 -Force

 $page = @"
'use client';
import { useState, useEffect, useRef } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { Scissors, Clock, MapPin, Phone, Sparkles, Star, ChevronDown, Accessibility, CreditCard, Baby, UserCheck, Bath, Volume2, VolumeX, ChevronLeft, ChevronRight } from 'lucide-react';
import Link from 'next/link';

const images = [
  "https://lh3.googleusercontent.com/gps-cs-s/AHRPTWlAI_-iU9Q6CYk8Ski9alSLDtygo1-V6oi6op-O8NT1TJYxZumlHJuv-KHDXkDYXoSa5EciFb4p2QhUUfvwyrZcCWC28ZADF4ayc8uyk1tKHFpz29ocXLrmE3Ars_LwQPI_TdebzyEo16YF=s406-k-no",
  "https://lh3.googleusercontent.com/gps-cs-s/AHRPTWkKymMBSq69j0ki_9bxY5EQFukrBGiFFwIDfsLnbDw0eone6najxKhgZKWQwGxB0ARHukGEVRO8b7FRwVWzr5q1MqSi8E2tpyR15m0IeZUzOpQtJEvBxs2corrCABE-LUxryHxheT0A9dPK=w203-h360-k-no",
  "https://lh3.googleusercontent.com/gps-cs-s/AHRPTWn04e_v9zxRcc-FE5u5o4evJcfVhP-6Csb70BY2Z0UAQVIfD4EukFILjdjljb3yqN3Hqp5f7RLtMffo3jUe3hfZ6MBZFixc0HOzsZmwAb62t1CZXq0cXy8X5cJCHMywpm698oj_WC95AIop=w203-h152-k-no",
  "https://lh3.googleusercontent.com/gps-cs-s/AHRPTWmevhZ4AIxV_D3K-a42DFiivGQa0SEMPOsMmcJpymIFMbFo05E-NnC4HjqAgHM201xadbcGF5l43Bte-zpHCTckQBbbH32TFDYsgAGA6XmGvTOAAsIYk7qGXZcqkVj7wj_wmphS5dcGXO59=w203-h287-k-no"
];

const services = [
  { icon: Scissors, title: 'Classic Haircut', desc: 'Timeless styles tailored to your preference, from scissor cuts to clippers.' },
  { icon: Sparkles, title: 'Skin Fades', desc: 'Seamless blends from skin to length for a sharp, modern look.' },
  { icon: UserCheck, title: 'Beard Sculpting', desc: 'Razor-sharp lineups and beard trims to keep your facial hair fresh.' },
  { icon: Baby, title: "Kids' Cuts", desc: 'Patient and friendly haircuts for your little ones in a comfortable environment.' },
  { icon: Bath, title: 'Hot Towel Shave', desc: 'Traditional straight razor shave with a hot towel for the ultimate clean feel.' },
  { icon: Sparkles, title: 'Haircut and Beard Combo', desc: 'The full package. Get your hair and beard done together for a complete transformation.' }
];

const features = [
  { icon: Accessibility, title: 'Accessibility', desc: 'Wheelchair accessible entrance & parking.' },
  { icon: UserCheck, title: 'Service Options', desc: 'On-site services available.' },
  { icon: Bath, title: 'Amenities', desc: 'Restroom available for customers.' },
  { icon: Clock, title: 'Planning', desc: 'Walk-ins welcome!' },
  { icon: CreditCard, title: 'Payments', desc: 'Cards, Debit, NFC Mobile Pay accepted.' },
  { icon: Baby, title: 'Children', desc: 'Good for kids.' }
];

const hours = [
  { day: 'Sunday', time: '10:00 AM - 5:00 PM' },
  { day: 'Monday', time: '9:30 AM - 7:00 PM' },
  { day: 'Tuesday', time: '9:30 AM - 7:00 PM' },
  { day: 'Wednesday', time: '9:30 AM - 7:00 PM' },
  { day: 'Thursday', time: '9:30 AM - 7:00 PM' },
  { day: 'Friday', time: '9:30 AM - 7:00 PM' },
  { day: 'Saturday', time: '9:30 AM - 7:00 PM' }
];

const reviews = [
  { name: "Vernen Gay Agustin", text: "We’ve been searching for the best barber shop in the area for a while, and this place exceeded our expectations. Great service, clean space, and such a welcoming vibe. My kids walked out happy and confident. Highly recommend to any parents.", rating: 5, date: "3 months ago" },
  { name: "Tara Balaski", text: "My son got his hair done today, and quite a bit was taken off. He made a masterpiece of my son's hair. Absolutely love it! Incredible service, thank you so much!", rating: 5, date: "a month ago" },
  { name: "Santana D", text: "My husband came in today to get just his hair trim (Skin Fade) and he said the experience was great! The barber was super friendly, did a great job! The barber shop was really nice and clean with plenty of seating. It is WALK-IN only.", rating: 5, date: "6 months ago" },
  { name: "Zsarina Balmes", text: "My husband and I recently visited this barber shop, and we had a great experience! The place is clean, welcoming, and has a really nice vibe. The barber did an amazing job giving us the exact haircuts we wanted.", rating: 5, date: "4 months ago" },
  { name: "SHABISKY", text: "I got a taper and a razor cut for my hair and beard, very happy with the outcome, he was very polite and easy going. Double checked the haircut I wanted and kept asking if I needed anything else. 10/10 to Amin he’s honestly a hard worker!", rating: 5, date: "2 months ago" },
  { name: "Jodi Healey", text: "Took my dad to this barbershop and we couldn’t be happier with the result! The barber did a fantastic job every detail was perfectly executed and it’s clear they take pride in their craft.", rating: 5, date: "8 months ago" },
  { name: "Denise Brake", text: "We were walk in customers today, warmly welcomed by Joseph and he was up for the challenge!", rating: 5, date: "4 months ago" },
  { name: "Michael Landry", text: "Super professional, love how fast and precise the guys are. Very friendly, and a pleasure to see them every time! Best barbershop in the area and I’ve been to a few!!!", rating: 5, date: "8 months ago" },
  { name: "Salimah Karmali", text: "Yusuf was very professional and listen to what my son wanted. Delivered with 5 stars!! He left one happy kid with a big smile, saying ‘It’s exactly what I wanted!!” Thank you!", rating: 5, date: "2 months ago" },
  { name: "Becca R", text: "Excellent barber for my toddler, stylist had him giggling right away and he sat through a haircut with no problems. Cool place with a foosball table that kept the little ones entertained and he left looking dapper.", rating: 5, date: "3 months ago" }
];

const faqs = [
  { q: "Do you accept walk-ins?", a: "Yes! We accept walk-ins, but booking an appointment guarantees your slot." },
  { q: "What payments do you accept?", a: "We accept Credit Cards, Debit Cards, and NFC Mobile Payments." },
  { q: "Is the shop wheelchair accessible?", a: "Yes, we have a wheelchair accessible entrance and parking lot." }
];

const FAQItem = ({ q, a }) => {
  const [open, setOpen] = useState(false);
  return (
    <div className="bg-dark2 p-5 rounded-lg border border-gold/10 mb-4">
      <button className="flex justify-between items-center w-full text-left" onClick={() => setOpen(!open)}>
        <h4 className="text-lg font-semibold text-gold">{q}</h4>
        <ChevronDown className={`text-gold transition-transform ${open ? 'rotate-180' : ''}`} />
      </button>
      {open && <p className="mt-4 text-gray-400">{a}</p>}
    </div>
  );
};

const GoogleLogo = () => (
  <svg viewBox="0 0 272 92" width="80" height="27" xmlns="http://www.w3.org/2000/svg">
    <path fill="#EA4335" d="M115.75 47.18c0 12.77-9.99 22.18-22.25 22.18s-22.25-9.41-22.25-22.18C71.25 34.32 81.24 25 93.5 25s22.25 9.32 22.25 22.18zm-9.74 0c0-7.98-5.79-13.44-12.51-13.44S80.99 39.2 80.99 47.18c0 7.9 5.79 13.44 12.51 13.44s12.51-5.55 12.51-13.44z"/>
    <path fill="#FBBC05" d="M163.75 47.18c0 12.77-9.99 22.18-22.25 22.18s-22.25-9.41-22.25-22.18c0-12.85 9.99-22.18 22.25-22.18s22.25 9.32 22.25 22.18zm-9.74 0c0-7.98-5.79-13.44-12.51-13.44s-12.51 5.46-12.51 13.44c0 7.9 5.79 13.44 12.51 13.44s12.51-5.55 12.51-13.44z"/>
    <path fill="#4285F4" d="M209.75 26.34v39.82c0 16.38-9.66 23.07-21.08 23.07-10.75 0-17.22-7.19-19.66-13.07l8.48-3.53c1.51 3.61 5.21 7.87 11.17 7.87 7.31 0 11.84-4.51 11.84-13v-3.19h-.34c-2.18 2.69-6.38 5.04-11.68 5.04-11.09 0-21.25-9.66-21.25-22.09 0-12.52 10.16-22.26 21.25-22.26 5.29 0 9.49 2.35 11.68 4.96h.34v-3.61h9.25zm-8.56 20.92c0-7.81-5.21-13.52-11.84-13.52-6.72 0-12.35 5.71-12.35 13.52 0 7.73 5.63 13.36 12.35 13.36 6.63 0 11.84-5.63 11.84-13.36z"/>
    <path fill="#34A853" d="M225 3v65h-9.5V3h9.5z"/>
    <path fill="#EA4335" d="M262.02 54.48l7.56 5.04c-2.44 3.61-8.32 9.83-18.48 9.83-12.6 0-22.01-9.74-22.01-22.18 0-13.19 9.49-22.18 20.92-22.18 11.51 0 17.14 9.16 18.98 14.11l1.01 2.52-29.65 12.28c2.27 4.45 5.8 6.72 10.75 6.72 4.96 0 8.4-2.44 10.92-6.14zm-23.27-7.98l19.82-8.23c-1.09-2.77-4.37-4.7-8.23-4.7-4.95 0-11.84 4.37-11.59 12.93z"/>
    <path fill="#4285F4" d="M35.29 41.41V32H67c.31 1.64.47 3.58.47 5.68 0 7.06-1.93 15.79-8.15 22.01-6.05 6.3-13.78 9.66-24.02 9.66C16.32 69.35.36 53.89.36 34.91.36 15.93 16.32.47 35.3.47c10.5 0 17.98 4.12 23.6 9.49l-6.64 6.64c-4.03-3.78-9.49-6.72-16.97-6.72-13.86 0-24.7 11.17-24.7 25.03 0 13.86 10.84 25.03 24.7 25.03 8.99 0 14.11-3.61 17.39-6.89 2.66-2.66 4.41-6.46 5.1-11.65l-22.49.01z"/>
  </svg>
);

const explodeItems = [
  { x: -300, y: -200 }, { x: 300, y: -200 },
  { x: -300, y: 200 }, { x: 300, y: 200 },
  { x: 0, y: -400 }, { x: 0, y: 400 }
];

export default function Home() {
  const [isLoading, setIsLoading] = useState(true);
  const [isMuted, setIsMuted] = useState(false);
  const audioRef = useRef(null);
  const servicesRef = useRef(null);
  const imagesRef = useRef(null);
  const reviewsRef = useRef(null);

  const scroll = (ref, direction) => {
    if (ref.current) {
      ref.current.scrollBy({ left: direction * 350, behavior: 'smooth' });
    }
  };

  useEffect(() => {
    const timer = setTimeout(() => {
      setIsLoading(false);
      if (audioRef.current) {
        audioRef.current.play().catch(e => console.log("Autoplay blocked"));
      }
    }, 4000);
    return () => clearTimeout(timer);
  }, []);

  useEffect(() => {
    if (audioRef.current) {
      audioRef.current.muted = isMuted;
    }
  }, [isMuted]);

  return (
    <div>
      <audio ref={audioRef} src="/audiobarber.wav" loop />
      <button onClick={() => setIsMuted(!isMuted)} className="fixed bottom-5 right-5 z-[60] bg-dark2 p-3 rounded-full border border-gold/30 text-gold hover:bg-gold hover:text-black transition-colors">
        {isMuted ? <VolumeX size={24} /> : <Volume2 size={24} />}
      </button>

      <AnimatePresence>
        {isLoading && (
          <motion.div exit={{ opacity: 0 }} className="fixed inset-0 z-[100] bg-black flex flex-col items-center justify-center overflow-hidden">
            {explodeItems.map((e, i) => (
              <motion.div key={i} style={{ position: 'absolute' }} initial={{ x: 0, y: 0, opacity: 0, scale: 0 }} animate={{ x: e.x, y: e.y, opacity: [0, 1, 0], scale: [0, 1.5, 0], rotate: 360 }} transition={{ duration: 4, repeat: Infinity, delay: i * 0.1 }}>
                <Scissors className="text-gold w-12 h-12" />
              </motion.div>
            ))}
          </motion.div>
        )}
      </AnimatePresence>

      <header className="min-h-screen flex flex-col justify-center items-center text-center relative">
        <div className="absolute inset-0 bg-black/30 z-10"></div>
        <div className="absolute inset-0 hero-bg z-0"></div>
        <div className="z-20 px-6 flex flex-col items-center justify-end min-h-screen pb-24 pt-32">
          <motion.p initial={{opacity:0, y:50}} animate={{opacity:1, y:0}} transition={{duration:1, delay:0.5}} className="text-2xl md:text-4xl text-white uppercase tracking-widest mb-8 drop-shadow-[0_2px_10px_rgba(0,0,0,1)] font-bold">Where Quality Meets Service</motion.p>
          <motion.div initial={{opacity:0, y:50}} animate={{opacity:1, y:0}} transition={{duration:1, delay:1}} className="flex flex-col gap-4 items-center text-white mb-10">
            <p className="flex items-center gap-3 bg-black/50 backdrop-blur-md px-6 py-3 rounded-full border border-gold/30 font-semibold drop-shadow-lg"><MapPin className="text-gold" /> 6610 127 Ave NW, Edmonton, AB</p>
            <p className="flex items-center gap-3 bg-black/50 backdrop-blur-md px-6 py-3 rounded-full border border-gold/30 font-semibold drop-shadow-lg"><Phone className="text-gold" /> +1 780-665-6465</p>
          </motion.div>
          <motion.div initial={{opacity:0, y:50}} animate={{opacity:1, y:0}} transition={{duration:1, delay:1.5}}>
            <Link href="/book" className="btn-3d">Book Appointment</Link>
          </motion.div>
        </div>
      </header>

      <section id="services" className="py-24 bg-dark2 px-6">
        <h2 className="text-4xl md:text-5xl font-bold mb-12 text-center text-white font-cinzel">Our Services</h2>
        <div className="relative max-w-7xl mx-auto">
          <button onClick={() => scroll(servicesRef, -1)} className="absolute left-0 top-1/2 -translate-y-1/2 z-10 bg-dark p-3 rounded-full border border-gold/30 text-gold hover:bg-gold hover:text-black transition-colors">
            <ChevronLeft size={24} />
          </button>
          <div ref={servicesRef} className="flex gap-8 overflow-x-auto scroll-smooth snap-x snap-mandatory pb-6 px-10 no-scrollbar">
            {services.map((s, i) => (
              <motion.div key={i} initial={{opacity:0, y:50}} whileInView={{opacity:1, y:0}} viewport={{once:true}} transition={{duration:0.5, delay:i*0.1}} className="min-w-[300px] max-w-[300px] bg-dark p-10 rounded-xl border border-white/5 hover:border-gold/50 transition-all hover:-translate-y-2 snap-center">
                <s.icon className="text-gold text-5xl mb-4 mx-auto" />
                <h3 className="text-2xl font-bold mb-3 font-cinzel text-center">{s.title}</h3>
                <p className="text-gray-400 text-center">{s.desc}</p>
              </motion.div>
            ))}
          </div>
          <button onClick={() => scroll(servicesRef, 1)} className="absolute right-0 top-1/2 -translate-y-1/2 z-10 bg-dark p-3 rounded-full border border-gold/30 text-gold hover:bg-gold hover:text-black transition-colors">
            <ChevronRight size={24} />
          </button>
        </div>
      </section>

      <section id="about" className="py-24 px-6">
        <h2 className="text-4xl md:text-5xl font-bold mb-12 text-center font-cinzel">What We Offer</h2>
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 max-w-6xl mx-auto">
          {features.map((f, i) => (
            <motion.div key={i} initial={{opacity:0, y:30}} whileInView={{opacity:1, y:0}} viewport={{once:true}} transition={{duration:0.4, delay:i*0.1}} className="bg-dark2 p-6 rounded-xl flex items-center gap-4 border border-gold/10">
              <div className="bg-gold/10 p-3 rounded-lg"><f.icon className="text-gold text-2xl w-6 h-6" /></div>
              <div>
                <h3 className="text-xl font-bold text-white">{f.title}</h3>
                <p className="text-gray-400 text-sm">{f.desc}</p>
              </div>
            </motion.div>
          ))}
        </div>
      </section>

      <section id="gallery" className="py-24 bg-dark2 px-6">
        <h2 className="text-4xl md:text-5xl font-bold mb-12 text-center font-cinzel">Our Shop</h2>
        <div className="relative max-w-7xl mx-auto">
          <button onClick={() => scroll(imagesRef, -1)} className="absolute left-0 top-1/2 -translate-y-1/2 z-10 bg-dark p-3 rounded-full border border-gold/30 text-gold hover:bg-gold hover:text-black transition-colors">
            <ChevronLeft size={24} />
          </button>
          <div ref={imagesRef} className="flex gap-4 overflow-x-auto scroll-smooth snap-x snap-mandatory pb-4 px-10 no-scrollbar">
            {images.map((img, i) => (
              <motion.div key={i} initial={{opacity:0, scale:0.9}} whileInView={{opacity:1, scale:1}} viewport={{once:true}} transition={{duration:0.5}} className="min-w-[300px] h-[400px] rounded-2xl overflow-hidden border-2 border-gold/20 hover:border-gold/60 transition-all snap-center">
                <img src={img} alt={`Faded Barbershop ${i+1}`} className="w-full h-full object-cover" />
              </motion.div>
            ))}
          </div>
          <button onClick={() => scroll(imagesRef, 1)} className="absolute right-0 top-1/2 -translate-y-1/2 z-10 bg-dark p-3 rounded-full border border-gold/30 text-gold hover:bg-gold hover:text-black transition-colors">
            <ChevronRight size={24} />
          </button>
        </div>
      </section>

      <section id="reviews" className="py-24 px-6">
        <div className="max-w-7xl mx-auto">
          <div className="flex flex-col items-center gap-4 mb-12">
            <h2 className="text-4xl md:text-5xl font-bold text-center font-cinzel">Customer Reviews</h2>
            <div className="bg-dark2 p-4 rounded-xl flex items-center gap-3 border border-gold/20">
              <GoogleLogo />
              <div className="flex flex-col">
                <span className="text-2xl font-bold text-white">5.0</span>
                <div className="flex gap-1">
                  {[...Array(5)].map((_, i) => <Star key={i} className="text-gold fill-gold w-4 h-4" />)}
                </div>
              </div>
            </div>
          </div>
          <div className="relative">
            <button onClick={() => scroll(reviewsRef, -1)} className="absolute left-0 top-1/2 -translate-y-1/2 z-10 bg-dark2 p-3 rounded-full border border-gold/30 text-gold hover:bg-gold hover:text-black transition-colors">
              <ChevronLeft size={24} />
            </button>
            <div ref={reviewsRef} className="flex gap-6 overflow-x-auto snap-x snap-mandatory scroll-smooth pb-4 px-10 no-scrollbar">
              {reviews.map((r, i) => (
                <motion.div key={i} initial={{opacity:0, y:50}} whileInView={{opacity:1, y:0}} viewport={{once:true}} transition={{duration:0.5, delay:i*0.05}} className="min-w-[300px] max-w-[300px] bg-dark2 p-8 rounded-xl border border-white/5 flex flex-col snap-center hover:border-gold/40 transition-all">
                  <div className="flex justify-between items-center mb-4">
                    <h4 className="text-xl font-bold text-white font-cinzel">{r.name}</h4>
                    <span className="text-xs text-gray-500">{r.date}</span>
                  </div>
                  <div className="flex gap-1 mb-4">
                    {[...Array(r.rating)].map((_, j) => <Star key={j} className="text-gold fill-gold w-5 h-5" />)}
                  </div>
                  <p className="text-gray-400 italic flex-grow">"{r.text}"</p>
                </motion.div>
              ))}
            </div>
            <button onClick={() => scroll(reviewsRef, 1)} className="absolute right-0 top-1/2 -translate-y-1/2 z-10 bg-dark2 p-3 rounded-full border border-gold/30 text-gold hover:bg-gold hover:text-black transition-colors">
              <ChevronRight size={24} />
            </button>
          </div>
        </div>
      </section>

      <section id="faq" className="py-24 bg-dark2 px-6">
        <div className="max-w-3xl mx-auto">
          <h2 className="text-4xl md:text-5xl font-bold mb-12 text-center font-cinzel">Frequently Asked Questions</h2>
          {faqs.map((f, i) => <FAQItem key={i} q={f.q} a={f.a} />)}
        </div>
      </section>

      <section id="contact" className="py-24 px-6">
        <h2 className="text-4xl md:text-5xl font-bold mb-12 text-center font-cinzel">Visit Us</h2>
        <div className="grid md:grid-cols-2 gap-12 max-w-6xl mx-auto items-stretch">
          <div className="bg-dark2 p-8 rounded-xl border border-gold/20 flex flex-col justify-center">
            <h3 className="text-2xl font-bold text-gold mb-6 font-cinzel flex items-center gap-2"><Clock /> Opening Hours</h3>
            <ul className="space-y-3">
              {hours.map((h, i) => (
                <li key={i} className="flex justify-between border-b border-white/5 pb-2">
                  <span className="text-gray-300">{h.day}</span>
                  <span className="text-white font-semibold">{h.time}</span>
                </li>
              ))}
            </ul>
            <a href="tel:+17806656465" className="mt-6 inline-flex items-center gap-2 text-gold text-lg hover:text-white transition"><Phone /> +1 780-665-6465</a>
          </div>
          <div className="rounded-xl overflow-hidden border border-gold/20 h-[450px] bg-dark2 relative">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d37888.8756449198!2d-113.4674514317796!3d53.59248511836368!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x53a023cf8bd7bd03%3A0xb41bd5e899d57e96!2sFaded%20Barbershop!5e0!3m2!1sen!2sma!4v1785111760738!5m2!1sen!2sma" width="100%" height="100%" style={{ border: 0 }} allowFullScreen="" loading="lazy" referrerPolicy="strict-origin-when-cross-origin"></iframe>
          </div>
        </div>
        <div className="text-center mt-12">
          <a href="https://www.google.com/maps/place/Faded+Barbershop/@54.832399,-112.5333398,7z/data=!4m6!3m5!1s0x53a023cf8bd7bd03:0xb41bd5e899d57e96!8m2!3d53.5853054!4d-113.4435655!16s%2Fg%2F11fll5qhc8?entry=ttu&g_ep=EgoyMDI2MDcyMi4wIKXMDSoASAFQAw%3D%3D" target="_blank" rel="noopener noreferrer" className="btn-3d">Get Directions</a>
        </div>
      </section>

      <footer className="bg-dark2 border-t border-gold/10 py-12 px-6">
        <div className="max-w-6xl mx-auto grid grid-cols-1 md:grid-cols-3 gap-8 text-center md:text-left">
          <div>
            <h3 className="text-2xl font-bold text-gold font-cinzel mb-2">FADED BARBERSHOP</h3>
            <p className="text-gray-400 text-sm">Where Quality Meets Service. Edmonton's premier destination for top-tier cuts and grooming.</p>
          </div>
          <div>
            <h4 className="text-xl font-bold text-white mb-4">Quick Links</h4>
            <ul className="space-y-2 text-gray-400">
              <li><Link href="/" className="hover:text-gold transition">Home</Link></li>
              <li><Link href="/#services" className="hover:text-gold transition">Services</Link></li>
              <li><Link href="/book" className="hover:text-gold transition">Book Appointment</Link></li>
            </ul>
          </div>
          <div>
            <h4 className="text-xl font-bold text-white mb-4">Visit Us</h4>
            <ul className="space-y-2 text-gray-400">
              <li className="flex items-center justify-center md:justify-start gap-2"><MapPin className="text-gold" /> 6610 127 Ave NW, Edmonton, AB</li>
              <li className="flex items-center justify-center md:justify-start gap-2"><Phone className="text-gold" /> +1 780-665-6465</li>
            </ul>
          </div>
        </div>
        <div className="mt-8 pt-8 border-t border-white/5 text-center text-gray-500 text-sm">
          © {new Date().getFullYear()} Faded Barbershop. All Rights Reserved.
        </div>
      </footer>
    </div>
  );
}
"@
Set-Content -Path "app\page.jsx" -Value $page -Encoding UTF8 -Force

Write-Host "==========================================" -ForegroundColor Green
Write-Host "SUCCESS! All files updated perfectly." -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green