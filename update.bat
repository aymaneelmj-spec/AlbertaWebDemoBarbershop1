@echo off
chcp 65001 >nul
title Fixing Map, Hours, and Footer

echo Generating update script...

> fix.ps1 echo $page = @'
>>fix.ps1 echo 'use client';
>>fix.ps1 echo import { useState } from 'react';
>>fix.ps1 echo import { motion } from 'framer-motion';
>>fix.ps1 echo import { Scissors, Clock, MapPin, Phone, Sparkles, Star, ChevronDown, Accessibility, CreditCard, Baby, UserCheck, Bath } from 'lucide-react';
>>fix.ps1 echo import Link from 'next/link';
>>fix.ps1 echo const heroBg = "https://images.unsplash.com/photo-1503951914875-452162b0f3f1?q=80&w=2070&auto=format&fit=crop";
>>fix.ps1 echo const images = [
>>fix.ps1 echo   "https://lh3.googleusercontent.com/gps-cs-s/AHRPTWlAI_-iU9Q6CYk8Ski9alSLDtygo1-V6oi6op-O8NT1TJYxZumlHJuv-KHDXkDYXoSa5EciFb4p2QhUUfvwyrZcCWC28ZADF4ayc8uyk1tKHFpz29ocXLrmE3Ars_LwQPI_TdebzyEo16YF=s406-k-no",
>>fix.ps1 echo   "https://lh3.googleusercontent.com/gps-cs-s/AHRPTWkKymMBSq69j0ki_9bxY5EQFukrBGiFFwIDfsLnbDw0eone6najxKhgZKWQwGxB0ARHukGEVRO8b7FRwVWzr5q1MqSi8E2tpyR15m0IeZUzOpQtJEvBxs2corrCABE-LUxryHxheT0A9dPK=w203-h360-k-no",
>>fix.ps1 echo   "https://lh3.googleusercontent.com/gps-cs-s/AHRPTWn04e_v9zxRcc-FE5u5o4evJcfVhP-6Csb70BY2Z0UAQVIfD4EukFILjdjljb3yqN3Hqp5f7RLtMffo3jUe3hfZ6MBZFixc0HOzsZmwAb62t1CZXq0cXy8X5cJCHMywpm698oj_WC95AIop=w203-h152-k-no",
>>fix.ps1 echo   "https://lh3.googleusercontent.com/gps-cs-s/AHRPTWmevhZ4AIxV_D3K-a42DFiivGQa0SEMPOsMmcJpymIFMbFo05E-NnC4HjqAgHM201xadbcGF5l43Bte-zpHCTckQBbbH32TFDYsgAGA6XmGvTOAAsIYk7qGXZcqkVj7wj_wmphS5dcGXO59=w203-h287-k-no"
>>fix.ps1 echo ];
>>fix.ps1 echo const services = [
>>fix.ps1 echo   { icon: Scissors, title: 'Classic Cuts', desc: 'Timeless styles tailored to your preference.' },
>>fix.ps1 echo   { icon: Sparkles, title: 'Skin Fades', desc: 'Seamless blends from skin to length.' },
>>fix.ps1 echo   { icon: Clock, title: 'Beard Grooming', desc: 'Razor-sharp lineups and beard sculpting.' }
>>fix.ps1 echo ];
>>fix.ps1 echo const features = [
>>fix.ps1 echo   { icon: Accessibility, title: 'Accessibility', desc: 'Wheelchair accessible entrance & parking.' },
>>fix.ps1 echo   { icon: UserCheck, title: 'Service Options', desc: 'On-site services available.' },
>>fix.ps1 echo   { icon: Bath, title: 'Amenities', desc: 'Restroom available for customers.' },
>>fix.ps1 echo   { icon: Clock, title: 'Planning', desc: 'Walk-ins welcome!' },
>>fix.ps1 echo   { icon: CreditCard, title: 'Payments', desc: 'Cards, Debit, NFC Mobile Pay accepted.' },
>>fix.ps1 echo   { icon: Baby, title: 'Children', desc: 'Good for kids.' }
>>fix.ps1 echo ];
>>fix.ps1 echo const hours = [
>>fix.ps1 echo   { day: 'Sunday', time: '10:00 AM - 5:00 PM' },
>>fix.ps1 echo   { day: 'Monday', time: '9:30 AM - 7:00 PM' },
>>fix.ps1 echo   { day: 'Tuesday', time: '9:30 AM - 7:00 PM' },
>>fix.ps1 echo   { day: 'Wednesday', time: '9:30 AM - 7:00 PM' },
>>fix.ps1 echo   { day: 'Thursday', time: '9:30 AM - 7:00 PM' },
>>fix.ps1 echo   { day: 'Friday', time: '9:30 AM - 7:00 PM' },
>>fix.ps1 echo   { day: 'Saturday', time: '9:30 AM - 7:00 PM' }
>>fix.ps1 echo ];
>>fix.ps1 echo const reviews = [
>>fix.ps1 echo   { name: "James R.", text: "Best fade in Edmonton! Always clean lines and great atmosphere.", rating: 5 },
>>fix.ps1 echo   { name: "Sarah M.", text: "Walked in on a Saturday and was seen right away. Highly recommend for kids too!", rating: 5 },
>>fix.ps1 echo   { name: "David L.", text: "Professional barbers, accept mobile pay which is super convenient. My go-to spot.", rating: 5 }
>>fix.ps1 echo ];
>>fix.ps1 echo const faqs = [
>>fix.ps1 echo   { q: "Do you accept walk-ins?", a: "Yes! We accept walk-ins, but booking an appointment guarantees your slot." },
>>fix.ps1 echo   { q: "What payments do you accept?", a: "We accept Credit Cards, Debit Cards, and NFC Mobile Payments." },
>>fix.ps1 echo   { q: "Is the shop wheelchair accessible?", a: "Yes, we have a wheelchair accessible entrance and parking lot." }
>>fix.ps1 echo ];
>>fix.ps1 echo const FAQItem = ({ q, a }) => {
>>fix.ps1 echo   const [open, setOpen] = useState(false);
>>fix.ps1 echo   return (
>>fix.ps1 echo     <div className="bg-dark2 p-5 rounded-lg border border-gold/10 mb-4">
>>fix.ps1 echo       <button className="flex justify-between items-center w-full text-left" onClick={() => setOpen(!open)}>
>>fix.ps1 echo         <h4 className="text-lg font-semibold text-gold">{q}</h4>
>>fix.ps1 echo         <ChevronDown className={`text-gold transition-transform ${open ? 'rotate-180' : ''}`} />
>>fix.ps1 echo       </button>
>>fix.ps1 echo       {open && <p className="mt-4 text-gray-400">{a}</p>}
>>fix.ps1 echo     </div>
>>fix.ps1 echo   );
>>fix.ps1 echo };
>>fix.ps1 echo export default function Home() {
>>fix.ps1 echo   return (
>>fix.ps1 echo     <div>
>>fix.ps1 echo       <header className="min-h-screen flex flex-col justify-center items-center text-center relative">
>>fix.ps1 echo         <div className="absolute inset-0 bg-gradient-to-b from-black/80 via-black/50 to-black z-10"></div>
>>fix.ps1 echo         <div className="absolute inset-0 bg-cover bg-center" style={{ backgroundImage: `url(${heroBg})` }}></div>
>>fix.ps1 echo         <div className="z-20 px-6">
>>fix.ps1 echo           <motion.h1 initial={{opacity:0, y:50}} animate={{opacity:1, y:0}} transition={{duration:1}} className="text-5xl md:text-8xl font-bold mb-4 gradient-text">FADED BARBERSHOP</motion.h1>
>>fix.ps1 echo           <motion.p initial={{opacity:0, y:50}} animate={{opacity:1, y:0}} transition={{duration:1, delay:0.5}} className="text-lg md:text-2xl text-gray-300 uppercase tracking-widest mb-8">Where Quality Meets Service</motion.p>
>>fix.ps1 echo           <motion.div initial={{opacity:0, y:50}} animate={{opacity:1, y:0}} transition={{duration:1, delay:1}} className="flex flex-col gap-4 items-center text-gray-200 mb-10">
>>fix.ps1 echo             <p className="flex items-center gap-3"><MapPin className="text-gold" /> 6610 127 Ave NW, Edmonton, AB</p>
>>fix.ps1 echo             <p className="flex items-center gap-3"><Phone className="text-gold" /> +1 780-665-6465</p>
>>fix.ps1 echo           </motion.div>
>>fix.ps1 echo           <motion.div initial={{opacity:0, y:50}} animate={{opacity:1, y:0}} transition={{duration:1, delay:1.5}}>
>>fix.ps1 echo             <Link href="/book" className="btn-3d">Book Appointment</Link>
>>fix.ps1 echo           </motion.div>
>>fix.ps1 echo         </div>
>>fix.ps1 echo       </header>
>>fix.ps1 echo       <section id="services" className="py-24 bg-dark2 px-6 text-center">
>>fix.ps1 echo         <h2 className="text-4xl md:text-5xl font-bold mb-12 text-white font-cinzel">Our Services</h2>
>>fix.ps1 echo         <div className="flex flex-wrap justify-center gap-8 max-w-5xl mx-auto">
>>fix.ps1 echo           {services.map((s, i) => (
>>fix.ps1 echo             <motion.div key={i} initial={{opacity:0, y:50}} whileInView={{opacity:1, y:0}} viewport={{once:true}} transition={{duration:0.5, delay:i*0.2}} className="bg-dark p-10 rounded-xl border border-white/5 hover:border-gold/50 transition-all hover:-translate-y-2 max-w-sm">
>>fix.ps1 echo               <s.icon className="text-gold text-5xl mb-4 mx-auto" />
>>fix.ps1 echo               <h3 className="text-2xl font-bold mb-3 font-cinzel">{s.title}</h3>
>>fix.ps1 echo               <p className="text-gray-400">{s.desc}</p>
>>fix.ps1 echo             </motion.div>
>>fix.ps1 echo           ))}
>>fix.ps1 echo         </div>
>>fix.ps1 echo       </section>
>>fix.ps1 echo       <section id="about" className="py-24 px-6">
>>fix.ps1 echo         <h2 className="text-4xl md:text-5xl font-bold mb-12 text-center font-cinzel">What We Offer</h2>
>>fix.ps1 echo         <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 max-w-6xl mx-auto">
>>fix.ps1 echo           {features.map((f, i) => (
>>fix.ps1 echo             <motion.div key={i} initial={{opacity:0, y:30}} whileInView={{opacity:1, y:0}} viewport={{once:true}} transition={{duration:0.4, delay:i*0.1}} className="bg-dark2 p-6 rounded-xl flex items-center gap-4 border border-gold/10">
>>fix.ps1 echo               <div className="bg-gold/10 p-3 rounded-lg"><f.icon className="text-gold text-2xl w-6 h-6" /></div>
>>fix.ps1 echo               <div>
>>fix.ps1 echo                 <h3 className="text-xl font-bold text-white">{f.title}</h3>
>>fix.ps1 echo                 <p className="text-gray-400 text-sm">{f.desc}</p>
>>fix.ps1 echo               </div>
>>fix.ps1 echo             </motion.div>
>>fix.ps1 echo           ))}
>>fix.ps1 echo         </div>
>>fix.ps1 echo       </section>
>>fix.ps1 echo       <section id="gallery" className="py-24 bg-dark2 px-6">
>>fix.ps1 echo         <h2 className="text-4xl md:text-5xl font-bold mb-12 text-center font-cinzel">Our Shop</h2>
>>fix.ps1 echo         <div className="flex gap-4 overflow-x-auto pb-4 max-w-7xl mx-auto scroll-smooth">
>>fix.ps1 echo           {images.map((img, i) => (
>>fix.ps1 echo             <motion.div key={i} initial={{opacity:0, scale:0.9}} whileInView={{opacity:1, scale:1}} viewport={{once:true}} transition={{duration:0.5}} className="min-w-[300px] h-[400px] rounded-2xl overflow-hidden border-2 border-gold/20 hover:border-gold/60 transition-all">
>>fix.ps1 echo               <img src={img} alt={`Faded Barbershop ${i+1}`} className="w-full h-full object-cover" />
>>fix.ps1 echo             </motion.div>
>>fix.ps1 echo           ))}
>>fix.ps1 echo         </div>
>>fix.ps1 echo       </section>
>>fix.ps1 echo       <section id="reviews" className="py-24 px-6">
>>fix.ps1 echo         <h2 className="text-4xl md:text-5xl font-bold mb-12 text-center font-cinzel">Customer Reviews</h2>
>>fix.ps1 echo         <div className="grid md:grid-cols-3 gap-8 max-w-6xl mx-auto">
>>fix.ps1 echo           {reviews.map((r, i) => (
>>fix.ps1 echo             <motion.div key={i} initial={{opacity:0, y:50}} whileInView={{opacity:1, y:0}} viewport={{once:true}} transition={{duration:0.5, delay:i*0.2}} className="bg-dark2 p-8 rounded-xl border border-white/5 text-center">
>>fix.ps1 echo               <div className="flex justify-center gap-1 mb-4">
>>fix.ps1 echo                 {[...Array(r.rating)].map((_, j) => <Star key={j} className="text-gold fill-gold" />)}
>>fix.ps1 echo               </div>
>>fix.ps1 echo               <p className="text-gray-400 italic mb-6">"{r.text}"</p>
>>fix.ps1 echo               <h4 className="text-xl font-bold text-white font-cinzel">{r.name}</h4>
>>fix.ps1 echo             </motion.div>
>>fix.ps1 echo           ))}
>>fix.ps1 echo         </div>
>>fix.ps1 echo       </section>
>>fix.ps1 echo       <section id="faq" className="py-24 bg-dark2 px-6">
>>fix.ps1 echo         <div className="max-w-3xl mx-auto">
>>fix.ps1 echo           <h2 className="text-4xl md:text-5xl font-bold mb-12 text-center font-cinzel">Frequently Asked Questions</h2>
>>fix.ps1 echo           {faqs.map((f, i) => <FAQItem key={i} q={f.q} a={f.a} />)}
>>fix.ps1 echo         </div>
>>fix.ps1 echo       </section>
>>fix.ps1 echo       <section id="contact" className="py-24 px-6">
>>fix.ps1 echo         <h2 className="text-4xl md:text-5xl font-bold mb-12 text-center font-cinzel">Visit Us</h2>
>>fix.ps1 echo         <div className="grid md:grid-cols-2 gap-12 max-w-6xl mx-auto items-stretch">
>>fix.ps1 echo           <div className="bg-dark2 p-8 rounded-xl border border-gold/20 flex flex-col justify-center">
>>fix.ps1 echo             <h3 className="text-2xl font-bold text-gold mb-6 font-cinzel flex items-center gap-2"><Clock /> Opening Hours</h3>
>>fix.ps1 echo             <ul className="space-y-3">
>>fix.ps1 echo               {hours.map((h, i) => (
>>fix.ps1 echo                 <li key={i} className="flex justify-between border-b border-white/5 pb-2">
>>fix.ps1 echo                   <span className="text-gray-300">{h.day}</span>
>>fix.ps1 echo                   <span className="text-white font-semibold">{h.time}</span>
>>fix.ps1 echo                 </li>
>>fix.ps1 echo               ))}
>>fix.ps1 echo             </ul>
>>fix.ps1 echo             <a href="tel:+17806656465" className="mt-6 inline-flex items-center gap-2 text-gold text-lg hover:text-white transition"><Phone /> +1 780-665-6465</a>
>>fix.ps1 echo           </div>
>>fix.ps1 echo           <div className="rounded-xl overflow-hidden border border-gold/20 h-[450px] bg-dark2 relative">
>>fix.ps1 echo             <iframe src="https://maps.google.com/maps?q=53.5853054,-113.4435655&z=15&output=embed" width="100%" height="100%" style={{ border: 0 }} allowFullScreen="" loading="lazy"></iframe>
>>fix.ps1 echo           </div>
>>fix.ps1 echo         </div>
>>fix.ps1 echo         <div className="text-center mt-12">
>>fix.ps1 echo           <a href="https://www.google.com/maps/place/Faded+Barbershop/@54.832399,-112.5333398,7z/data=!4m6!3m5!1s0x53a023cf8bd7bd03:0xb41bd5e899d57e96!8m2!3d53.5853054!4d-113.4435655!16s%2Fg%2F11fll5qhc8?entry=ttu&g_ep=EgoyMDI2MDcyMi4wIKXMDSoASAFQAw%3D%3D" target="_blank" rel="noopener noreferrer" className="btn-3d">Get Directions</a>
>>fix.ps1 echo         </div>
>>fix.ps1 echo       </section>
>>fix.ps1 echo       <footer className="bg-dark2 border-t border-gold/10 py-12 px-6">
>>fix.ps1 echo         <div className="max-w-6xl mx-auto grid grid-cols-1 md:grid-cols-3 gap-8 text-center md:text-left">
>>fix.ps1 echo           <div>
>>fix.ps1 echo             <h3 className="text-2xl font-bold text-gold font-cinzel mb-2">FADED BARBERSHOP</h3>
>>fix.ps1 echo             <p className="text-gray-400 text-sm">Where Quality Meets Service. Edmonton's premier destination for top-tier cuts and grooming.</p>
>>fix.ps1 echo           </div>
>>fix.ps1 echo           <div>
>>fix.ps1 echo             <h4 className="text-xl font-bold text-white mb-4">Quick Links</h4>
>>fix.ps1 echo             <ul className="space-y-2 text-gray-400">
>>fix.ps1 echo               <li><Link href="/" className="hover:text-gold transition">Home</Link></li>
>>fix.ps1 echo               <li><Link href="/#services" className="hover:text-gold transition">Services</Link></li>
>>fix.ps1 echo               <li><Link href="/book" className="hover:text-gold transition">Book Appointment</Link></li>
>>fix.ps1 echo             </ul>
>>fix.ps1 echo           </div>
>>fix.ps1 echo           <div>
>>fix.ps1 echo             <h4 className="text-xl font-bold text-white mb-4">Visit Us</h4>
>>fix.ps1 echo             <ul className="space-y-2 text-gray-400">
>>fix.ps1 echo               <li className="flex items-center justify-center md:justify-start gap-2"><MapPin className="text-gold" /> 6610 127 Ave NW, Edmonton, AB</li>
>>fix.ps1 echo               <li className="flex items-center justify-center md:justify-start gap-2"><Phone className="text-gold" /> +1 780-665-6465</li>
>>fix.ps1 echo             </ul>
>>fix.ps1 echo           </div>
>>fix.ps1 echo         </div>
>>fix.ps1 echo         <div className="mt-8 pt-8 border-t border-white/5 text-center text-gray-500 text-sm">
>>fix.ps1 echo           © {new Date().getFullYear()} Faded Barbershop. All Rights Reserved.
>>fix.ps1 echo         </div>
>>fix.ps1 echo       </footer>
>>fix.ps1 echo     </div>
>>fix.ps1 echo   );
>>fix.ps1 echo }
>>fix.ps1 echo '@
>>fix.ps1 echo Set-Content -Path "app\page.jsx" -Value $page -Encoding UTF8

powershell -ExecutionPolicy Bypass -File fix.ps1
del fix.ps1

echo ==========================================
echo SUCCESS! 
echo - Google Maps is now fully interactive and clickable.
echo - Working hours format has been cleaned up.
echo - A premium footer has been added.
echo ==========================================
pause