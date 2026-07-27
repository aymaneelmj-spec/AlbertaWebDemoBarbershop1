@echo off
chcp 65001 >nul
title Fixing SMS Bug & Adding More Services

echo Generating fix script (safely bypassing Windows Batch bugs)...

> fix.ps1 echo $page = @'
>>fix.ps1 echo 'use client';
>>fix.ps1 echo import { useState } from 'react';
>>fix.ps1 echo import { motion } from 'framer-motion';
>>fix.ps1 echo import { Scissors, Clock, MapPin, Phone, Sparkles, Star, ChevronDown, Accessibility, CreditCard, Baby, UserCheck, Bath } from 'lucide-react';
>>fix.ps1 echo import Link from 'next/link';
>>fix.ps1 echo const heroBg = "https://images.unsplash.com/photo-1503951914875-452162b0f3f1?q=80^&w=2070^&auto=format^&fit=crop";
>>fix.ps1 echo const images = [
>>fix.ps1 echo   "https://lh3.googleusercontent.com/gps-cs-s/AHRPTWlAI_-iU9Q6CYk8Ski9alSLDtygo1-V6oi6op-O8NT1TJYxZumlHJuv-KHDXkDYXoSa5EciFb4p2QhUUfvwyrZcCWC28ZADF4ayc8uyk1tKHFpz29ocXLrmE3Ars_LwQPI_TdebzyEo16YF=s406-k-no",
>>fix.ps1 echo   "https://lh3.googleusercontent.com/gps-cs-s/AHRPTWkKymMBSq69j0ki_9bxY5EQFukrBGiFFwIDfsLnbDw0eone6najxKhgZKWQwGxB0ARHukGEVRO8b7FRwVWzr5q1MqSi8E2tpyR15m0IeZUzOpQtJEvBxs2corrCABE-LUxryHxheT0A9dPK=w203-h360-k-no",
>>fix.ps1 echo   "https://lh3.googleusercontent.com/gps-cs-s/AHRPTWn04e_v9zxRcc-FE5u5o4evJcfVhP-6Csb70BY2Z0UAQVIfD4EukFILjdjljb3yqN3Hqp5f7RLtMffo3jUe3hfZ6MBZFixc0HOzsZmwAb62t1CZXq0cXy8X5cJCHMywpm698oj_WC95AIop=w203-h152-k-no",
>>fix.ps1 echo   "https://lh3.googleusercontent.com/gps-cs-s/AHRPTWmevhZ4AIxV_D3K-a42DFiivGQa0SEMPOsMmcJpymIFMbFo05E-NnC4HjqAgHM201xadbcGF5l43Bte-zpHCTckQBbbH32TFDYsgAGA6XmGvTOAAsIYk7qGXZcqkVj7wj_wmphS5dcGXO59=w203-h287-k-no"
>>fix.ps1 echo ];
>>fix.ps1 echo const services = [
>>fix.ps1 echo   { icon: Scissors, title: 'Classic Haircut', desc: 'Timeless styles tailored to your preference, from scissor cuts to clippers.' },
>>fix.ps1 echo   { icon: Sparkles, title: 'Skin Fades', desc: 'Seamless blends from skin to length for a sharp, modern look.' },
>>fix.ps1 echo   { icon: UserCheck, title: 'Beard Sculpting', desc: 'Razor-sharp lineups and beard trims to keep your facial hair fresh.' },
>>fix.ps1 echo   { icon: Baby, title: "Kids' Cuts", desc: 'Patient and friendly haircuts for your little ones in a comfortable environment.' },
>>fix.ps1 echo   { icon: Bath, title: 'Hot Towel Shave', desc: 'Traditional straight razor shave with a hot towel for the ultimate clean feel.' },
>>fix.ps1 echo   { icon: Sparkles, title: 'Haircut & Beard Combo', desc: 'The full package. Get your hair and beard done together for a complete transformation.' }
>>fix.ps1 echo ];
>>fix.ps1 echo const features = [
>>fix.ps1 echo   { icon: Accessibility, title: 'Accessibility', desc: 'Wheelchair accessible entrance ^& parking.' },
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
>>fix.ps1 echo   { name: "Vernen Gay Agustin", text: "We’ve been searching for the best barber shop in the area for a while, and this place exceeded our expectations. Great service, clean space, and such a welcoming vibe. My kids walked out happy and confident. Highly recommend to any parents.", rating: 5, date: "3 months ago" },
>>fix.ps1 echo   { name: "Tara Balaski", text: "My son got his hair done today, and quite a bit was taken off. He made a masterpiece of my son's hair. Absolutely love it! Incredible service, thank you so much!", rating: 5, date: "a month ago" },
>>fix.ps1 echo   { name: "Santana D", text: "My husband came in today to get just his hair trim (Skin Fade) and he said the experience was great! The barber was super friendly, did a great job! The barber shop was really nice and clean with plenty of seating. It is WALK-IN only.", rating: 5, date: "6 months ago" },
>>fix.ps1 echo   { name: "Zsarina Balmes", text: "My husband and I recently visited this barber shop, and we had a great experience! The place is clean, welcoming, and has a really nice vibe. The barber did an amazing job giving us the exact haircuts we wanted.", rating: 5, date: "4 months ago" },
>>fix.ps1 echo   { name: "SHABISKY", text: "I got a taper and a razor cut for my hair and beard, very happy with the outcome, he was very polite and easy going. Double checked the haircut I wanted and kept asking if I needed anything else. 10/10 to Amin he’s honestly a hard worker!", rating: 5, date: "2 months ago" },
>>fix.ps1 echo   { name: "Jodi Healey", text: "Took my dad to this barbershop and we couldn’t be happier with the result! The barber did a fantastic job every detail was perfectly executed and it’s clear they take pride in their craft.", rating: 5, date: "8 months ago" },
>>fix.ps1 echo   { name: "Denise Brake", text: "We were walk in customers today, warmly welcomed by Joseph and he was up for the challenge!", rating: 5, date: "4 months ago" },
>>fix.ps1 echo   { name: "Michael Landry", text: "Super professional, love how fast and precise the guys are. Very friendly, and a pleasure to see them every time! Best barbershop in the area and I’ve been to a few!!!", rating: 5, date: "8 months ago" },
>>fix.ps1 echo   { name: "Salimah Karmali", text: "Yusuf was very professional and listen to what my son wanted. Delivered with 5 stars!! He left one happy kid with a big smile, saying ‘It’s exactly what I wanted!!” Thank you!", rating: 5, date: "2 months ago" },
>>fix.ps1 echo   { name: "Becca R", text: "Excellent barber for my toddler, stylist had him giggling right away and he sat through a haircut with no problems. Cool place with a foosball table that kept the little ones entertained and he left looking dapper.", rating: 5, date: "3 months ago" }
>>fix.ps1 echo ];
>>fix.ps1 echo const faqs = [
>>fix.ps1 echo   { q: "Do you accept walk-ins?", a: "Yes! We accept walk-ins, but booking an appointment guarantees your slot." },
>>fix.ps1 echo   { q: "What payments do you accept?", a: "We accept Credit Cards, Debit Cards, and NFC Mobile Payments." },
>>fix.ps1 echo   { q: "Is the shop wheelchair accessible?", a: "Yes, we have a wheelchair accessible entrance and parking lot." }
>>fix.ps1 echo ];
>>fix.ps1 echo const FAQItem = ({ q, a }) =^> {
>>fix.ps1 echo   const [open, setOpen] = useState(false);
>>fix.ps1 echo   return (
>>fix.ps1 echo     ^<div className="bg-dark2 p-5 rounded-lg border border-gold/10 mb-4"^>
>>fix.ps1 echo       ^<button className="flex justify-between items-center w-full text-left" onClick={() =^> setOpen(!open)}^>
>>fix.ps1 echo         ^<h4 className="text-lg font-semibold text-gold"^>{q}^</h4^>
>>fix.ps1 echo         ^<ChevronDown className={`text-gold transition-transform ${open ? 'rotate-180' : ''}`} /^>
>>fix.ps1 echo       ^</button^>
>>fix.ps1 echo       {open ^&^& ^<p className="mt-4 text-gray-400"^>{a}^</p^>}
>>fix.ps1 echo     ^</div^>
>>fix.ps1 echo   );
>>fix.ps1 echo };
>>fix.ps1 echo const GoogleLogo = () =^> (
>>fix.ps1 echo   ^<svg viewBox="0 0 272 92" width="80" height="27" xmlns="http://www.w3.org/2000/svg"^>
>>fix.ps1 echo     ^<path fill="#EA4335" d="M115.75 47.18c0 12.77-9.99 22.18-22.25 22.18s-22.25-9.41-22.25-22.18C71.25 34.32 81.24 25 93.5 25s22.25 9.32 22.25 22.18zm-9.74 0c0-7.98-5.79-13.44-12.51-13.44S80.99 39.2 80.99 47.18c0 7.9 5.79 13.44 12.51 13.44s12.51-5.55 12.51-13.44z"/^>
>>fix.ps1 echo     ^<path fill="#FBBC05" d="M163.75 47.18c0 12.77-9.99 22.18-22.25 22.18s-22.25-9.41-22.25-22.18c0-12.85 9.99-22.18 22.25-22.18s22.25 9.32 22.25 22.18zm-9.74 0c0-7.98-5.79-13.44-12.51-13.44s-12.51 5.46-12.51 13.44c0 7.9 5.79 13.44 12.51 13.44s12.51-5.55 12.51-13.44z"/^>
>>fix.ps1 echo     ^<path fill="#4285F4" d="M209.75 26.34v39.82c0 16.38-9.66 23.07-21.08 23.07-10.75 0-17.22-7.19-19.66-13.07l8.48-3.53c1.51 3.61 5.21 7.87 11.17 7.87 7.31 0 11.84-4.51 11.84-13v-3.19h-.34c-2.18 2.69-6.38 5.04-11.68 5.04-11.09 0-21.25-9.66-21.25-22.09 0-12.52 10.16-22.26 21.25-22.26 5.29 0 9.49 2.35 11.68 4.96h.34v-3.61h9.25zm-8.56 20.92c0-7.81-5.21-13.52-11.84-13.52-6.72 0-12.35 5.71-12.35 13.52 0 7.73 5.63 13.36 12.35 13.36 6.63 0 11.84-5.63 11.84-13.36z"/^>
>>fix.ps1 echo     ^<path fill="#34A853" d="M225 3v65h-9.5V3h9.5z"/^>
>>fix.ps1 echo     ^<path fill="#EA4335" d="M262.02 54.48l7.56 5.04c-2.44 3.61-8.32 9.83-18.48 9.83-12.6 0-22.01-9.74-22.01-22.18 0-13.19 9.49-22.18 20.92-22.18 11.51 0 17.14 9.16 18.98 14.11l1.01 2.52-29.65 12.28c2.27 4.45 5.8 6.72 10.75 6.72 4.96 0 8.4-2.44 10.92-6.14zm-23.27-7.98l19.82-8.23c-1.09-2.77-4.37-4.7-8.23-4.7-4.95 0-11.84 4.37-11.59 12.93z"/^>
>>fix.ps1 echo     ^<path fill="#4285F4" d="M35.29 41.41V32H67c.31 1.64.47 3.58.47 5.68 0 7.06-1.93 15.79-8.15 22.01-6.05 6.3-13.78 9.66-24.02 9.66C16.32 69.35.36 53.89.36 34.91.36 15.93 16.32.47 35.3.47c10.5 0 17.98 4.12 23.6 9.49l-6.64 6.64c-4.03-3.78-9.49-6.72-16.97-6.72-13.86 0-24.7 11.17-24.7 25.03 0 13.86 10.84 25.03 24.7 25.03 8.99 0 14.11-3.61 17.39-6.89 2.66-2.66 4.41-6.46 5.1-11.65l-22.49.01z"/^>
>>fix.ps1 echo   ^</svg^>
>>fix.ps1 echo );
>>fix.ps1 echo export default function Home() {
>>fix.ps1 echo   return (
>>fix.ps1 echo     ^<div^>
>>fix.ps1 echo       ^<header className="min-h-screen flex flex-col justify-center items-center text-center relative"^>
>>fix.ps1 echo         ^<div className="absolute inset-0 bg-gradient-to-b from-black/80 via-black/50 to-black z-10"^>^</div^>
>>fix.ps1 echo         ^<div className="absolute inset-0 bg-cover bg-center" style={{ backgroundImage: `url(${heroBg})` }}^>^</div^>
>>fix.ps1 echo         ^<div className="z-20 px-6"^>
>>fix.ps1 echo           ^<motion.h1 initial={{opacity:0, y:50}} animate={{opacity:1, y:0}} transition={{duration:1}} className="text-5xl md:text-8xl font-bold mb-4 gradient-text"^>FADED BARBERSHOP^</motion.h1^>
>>fix.ps1 echo           ^<motion.p initial={{opacity:0, y:50}} animate={{opacity:1, y:0}} transition={{duration:1, delay:0.5}} className="text-lg md:text-2xl text-gray-300 uppercase tracking-widest mb-8"^>Where Quality Meets Service^</motion.p^>
>>fix.ps1 echo           ^<motion.div initial={{opacity:0, y:50}} animate={{opacity:1, y:0}} transition={{duration:1, delay:1}} className="flex flex-col gap-4 items-center text-gray-200 mb-10"^>
>>fix.ps1 echo             ^<p className="flex items-center gap-3"^>^<MapPin className="text-gold" /^> 6610 127 Ave NW, Edmonton, AB^</p^>
>>fix.ps1 echo             ^<p className="flex items-center gap-3"^>^<Phone className="text-gold" /^> +1 780-665-6465^</p^>
>>fix.ps1 echo           ^</motion.div^>
>>fix.ps1 echo           ^<motion.div initial={{opacity:0, y:50}} animate={{opacity:1, y:0}} transition={{duration:1, delay:1.5}}^>
>>fix.ps1 echo             ^<Link href="/book" className="btn-3d"^>Book Appointment^</Link^>
>>fix.ps1 echo           ^</motion.div^>
>>fix.ps1 echo         ^</div^>
>>fix.ps1 echo       ^</header^>
>>fix.ps1 echo       ^<section id="services" className="py-24 bg-dark2 px-6 text-center"^>
>>fix.ps1 echo         ^<h2 className="text-4xl md:text-5xl font-bold mb-12 text-white font-cinzel"^>Our Services^</h2^>
>>fix.ps1 echo         ^<div className="flex flex-wrap justify-center gap-8 max-w-5xl mx-auto"^>
>>fix.ps1 echo           {services.map((s, i) =^> (
>>fix.ps1 echo             ^<motion.div key={i} initial={{opacity:0, y:50}} whileInView={{opacity:1, y:0}} viewport={{once:true}} transition={{duration:0.5, delay:i*0.2}} className="bg-dark p-10 rounded-xl border border-white/5 hover:border-gold/50 transition-all hover:-translate-y-2 max-w-sm"^>
>>fix.ps1 echo               ^<s.icon className="text-gold text-5xl mb-4 mx-auto" /^>
>>fix.ps1 echo               ^<h3 className="text-2xl font-bold mb-3 font-cinzel"^>{s.title}^</h3^>
>>fix.ps1 echo               ^<p className="text-gray-400"^>{s.desc}^</p^>
>>fix.ps1 echo             ^</motion.div^>
>>fix.ps1 echo           ))}
>>fix.ps1 echo         ^</div^>
>>fix.ps1 echo       ^</section^>
>>fix.ps1 echo       ^<section id="about" className="py-24 px-6"^>
>>fix.ps1 echo         ^<h2 className="text-4xl md:text-5xl font-bold mb-12 text-center font-cinzel"^>What We Offer^</h2^>
>>fix.ps1 echo         ^<div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 max-w-6xl mx-auto"^>
>>fix.ps1 echo           {features.map((f, i) =^> (
>>fix.ps1 echo             ^<motion.div key={i} initial={{opacity:0, y:30}} whileInView={{opacity:1, y:0}} viewport={{once:true}} transition={{duration:0.4, delay:i*0.1}} className="bg-dark2 p-6 rounded-xl flex items-center gap-4 border border-gold/10"^>
>>fix.ps1 echo               ^<div className="bg-gold/10 p-3 rounded-lg"^>^<f.icon className="text-gold text-2xl w-6 h-6" /^>^</div^>
>>fix.ps1 echo               ^<div^>
>>fix.ps1 echo                 ^<h3 className="text-xl font-bold text-white"^>{f.title}^</h3^>
>>fix.ps1 echo                 ^<p className="text-gray-400 text-sm"^>{f.desc}^</p^>
>>fix.ps1 echo               ^</div^>
>>fix.ps1 echo             ^</motion.div^>
>>fix.ps1 echo           ))}
>>fix.ps1 echo         ^</div^>
>>fix.ps1 echo       ^</section^>
>>fix.ps1 echo       ^<section id="gallery" className="py-24 bg-dark2 px-6"^>
>>fix.ps1 echo         ^<h2 className="text-4xl md:text-5xl font-bold mb-12 text-center font-cinzel"^>Our Shop^</h2^>
>>fix.ps1 echo         ^<div className="flex gap-4 overflow-x-auto pb-4 max-w-7xl mx-auto scroll-smooth"^>
>>fix.ps1 echo           {images.map((img, i) =^> (
>>fix.ps1 echo             ^<motion.div key={i} initial={{opacity:0, scale:0.9}} whileInView={{opacity:1, scale:1}} viewport={{once:true}} transition={{duration:0.5}} className="min-w-[300px] h-[400px] rounded-2xl overflow-hidden border-2 border-gold/20 hover:border-gold/60 transition-all"^>
>>fix.ps1 echo               ^<img src={img} alt={`Faded Barbershop ${i+1}`} className="w-full h-full object-cover" /^>
>>fix.ps1 echo             ^</motion.div^>
>>fix.ps1 echo           ))}
>>fix.ps1 echo         ^</div^>
>>fix.ps1 echo       ^</section^>
>>fix.ps1 echo       ^<section id="reviews" className="py-24 px-6"^>
>>fix.ps1 echo         ^<div className="max-w-6xl mx-auto"^>
>>fix.ps1 echo           ^<div className="flex flex-col items-center gap-4 mb-12"^>
>>fix.ps1 echo             ^<h2 className="text-4xl md:text-5xl font-bold text-center font-cinzel"^>Customer Reviews^</h2^>
>>fix.ps1 echo             ^<div className="bg-dark2 p-4 rounded-xl flex items-center gap-3 border border-gold/20"^>
>>fix.ps1 echo               ^<GoogleLogo /^>
>>fix.ps1 echo               ^<div className="flex flex-col"^>
>>fix.ps1 echo                 ^<span className="text-2xl font-bold text-white"^>5.0^</span^>
>>fix.ps1 echo                 ^<div className="flex gap-1"^>
>>fix.ps1 echo                   {[...Array(5)].map((_, i) =^> ^<Star key={i} className="text-gold fill-gold w-4 h-4" /^>)}
>>fix.ps1 echo                 ^</div^>
>>fix.ps1 echo               ^</div^>
>>fix.ps1 echo             ^</div^>
>>fix.ps1 echo           ^</div^>
>>fix.ps1 echo           ^<div className="grid md:grid-cols-3 gap-8"^>
>>fix.ps1 echo             {reviews.map((r, i) =^> (
>>fix.ps1 echo               ^<motion.div key={i} initial={{opacity:0, y:50}} whileInView={{opacity:1, y:0}} viewport={{once:true}} transition={{duration:0.5, delay:i*0.1}} className="bg-dark2 p-8 rounded-xl border border-white/5 flex flex-col"^>
>>fix.ps1 echo                 ^<div className="flex justify-between items-center mb-4"^>
>>fix.ps1 echo                   ^<h4 className="text-xl font-bold text-white font-cinzel"^>{r.name}^</h4^>
>>fix.ps1 echo                   ^<span className="text-xs text-gray-500"^>{r.date}^</span^>
>>fix.ps1 echo                 ^</div^>
>>fix.ps1 echo                 ^<div className="flex gap-1 mb-4"^>
>>fix.ps1 echo                   {[...Array(r.rating)].map((_, j) =^> ^<Star key={j} className="text-gold fill-gold w-5 h-5" /^>)}
>>fix.ps1 echo                 ^</div^>
>>fix.ps1 echo                 ^<p className="text-gray-400 italic flex-grow"^>"{r.text}"^</p^>
>>fix.ps1 echo               ^</motion.div^>
>>fix.ps1 echo             ))}
>>fix.ps1 echo           ^</div^>
>>fix.ps1 echo         ^</div^>
>>fix.ps1 echo       ^</section^>
>>fix.ps1 echo       ^<section id="faq" className="py-24 bg-dark2 px-6"^>
>>fix.ps1 echo         ^<div className="max-w-3xl mx-auto"^>
>>fix.ps1 echo           ^<h2 className="text-4xl md:text-5xl font-bold mb-12 text-center font-cinzel"^>Frequently Asked Questions^</h2^>
>>fix.ps1 echo           {faqs.map((f, i) =^> ^<FAQItem key={i} q={f.q} a={f.a} /^>)}
>>fix.ps1 echo         ^</div^>
>>fix.ps1 echo       ^</section^>
>>fix.ps1 echo       ^<section id="contact" className="py-24 px-6"^>
>>fix.ps1 echo         ^<h2 className="text-4xl md:text-5xl font-bold mb-12 text-center font-cinzel"^>Visit Us^</h2^>
>>fix.ps1 echo         ^<div className="grid md:grid-cols-2 gap-12 max-w-6xl mx-auto items-stretch"^>
>>fix.ps1 echo           ^<div className="bg-dark2 p-8 rounded-xl border border-gold/20 flex flex-col justify-center"^>
>>fix.ps1 echo             ^<h3 className="text-2xl font-bold text-gold mb-6 font-cinzel flex items-center gap-2"^>^<Clock /^> Opening Hours^</h3^>
>>fix.ps1 echo             ^<ul className="space-y-3"^>
>>fix.ps1 echo               {hours.map((h, i) =^> (
>>fix.ps1 echo                 ^<li key={i} className="flex justify-between border-b border-white/5 pb-2"^>
>>fix.ps1 echo                   ^<span className="text-gray-300"^>{h.day}^</span^>
>>fix.ps1 echo                   ^<span className="text-white font-semibold"^>{h.time}^</span^>
>>fix.ps1 echo                 ^</li^>
>>fix.ps1 echo               ))}
>>fix.ps1 echo             ^</ul^>
>>fix.ps1 echo             ^<a href="tel:+17806656465" className="mt-6 inline-flex items-center gap-2 text-gold text-lg hover:text-white transition"^>^<Phone /^> +1 780-665-6465^</a^>
>>fix.ps1 echo           ^</div^>
>>fix.ps1 echo           ^<div className="rounded-xl overflow-hidden border border-gold/20 h-[450px] bg-dark2 relative"^>
>>fix.ps1 echo             ^<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d37888.8756449198!2d-113.4674514317796!3d53.59248511836368!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x53a023cf8bd7bd03%3A0xb41bd5e899d57e96!2sFaded%20Barbershop!5e0!3m2!1sen!2sma!4v1785111760738!5m2!1sen!2sma" width="100%%" height="100%%" style={{ border: 0 }} allowFullScreen="" loading="lazy" referrerPolicy="strict-origin-when-cross-origin"^>^</iframe^>
>>fix.ps1 echo           ^</div^>
>>fix.ps1 echo         ^</div^>
>>fix.ps1 echo         ^<div className="text-center mt-12"^>
>>fix.ps1 echo           ^<a href="https://www.google.com/maps/place/Faded+Barbershop/@54.832399,-112.5333398,7z/data=!4m6!3m5!1s0x53a023cf8bd7bd03:0xb41bd5e899d57e96!8m2!3d53.5853054!4d-113.4435655!16s%%2Fg%%2F11fll5qhc8?entry=ttu^&g_ep=EgoyMDI2MDcyMi4wIKXMDSoASAFQAw%%3D%%3D" target="_blank" rel="noopener noreferrer" className="btn-3d"^>Get Directions^</a^>
>>fix.ps1 echo         ^</div^>
>>fix.ps1 echo       ^</section^>
>>fix.ps1 echo       ^<footer className="bg-dark2 border-t border-gold/10 py-12 px-6"^>
>>fix.ps1 echo         ^<div className="max-w-6xl mx-auto grid grid-cols-1 md:grid-cols-3 gap-8 text-center md:text-left"^>
>>fix.ps1 echo           ^<div^>
>>fix.ps1 echo             ^<h3 className="text-2xl font-bold text-gold font-cinzel mb-2"^>FADED BARBERSHOP^</h3^>
>>fix.ps1 echo             ^<p className="text-gray-400 text-sm"^>Where Quality Meets Service. Edmonton's premier destination for top-tier cuts and grooming.^</p^>
>>fix.ps1 echo           ^</div^>
>>fix.ps1 echo           ^<div^>
>>fix.ps1 echo             ^<h4 className="text-xl font-bold text-white mb-4"^>Quick Links^</h4^>
>>fix.ps1 echo             ^<ul className="space-y-2 text-gray-400"^>
>>fix.ps1 echo               ^<li^>^<Link href="/" className="hover:text-gold transition"^>Home^</Link^>^</li^>
>>fix.ps1 echo               ^<li^>^<Link href="/#services" className="hover:text-gold transition"^>Services^</Link^>^</li^>
>>fix.ps1 echo               ^<li^>^<Link href="/book" className="hover:text-gold transition"^>Book Appointment^</Link^>^</li^>
>>fix.ps1 echo             ^</ul^>
>>fix.ps1 echo           ^</div^>
>>fix.ps1 echo           ^<div^>
>>fix.ps1 echo             ^<h4 className="text-xl font-bold text-white mb-4"^>Visit Us^</h4^>
>>fix.ps1 echo             ^<ul className="space-y-2 text-gray-400"^>
>>fix.ps1 echo               ^<li className="flex items-center justify-center md:justify-start gap-2"^>^<MapPin className="text-gold" /^> 6610 127 Ave NW, Edmonton, AB^</li^>
>>fix.ps1 echo               ^<li className="flex items-center justify-center md:justify-start gap-2"^>^<Phone className="text-gold" /^> +1 780-665-6465^</li^>
>>fix.ps1 echo             ^</ul^>
>>fix.ps1 echo           ^</div^>
>>fix.ps1 echo         ^</div^>
>>fix.ps1 echo         ^<div className="mt-8 pt-8 border-t border-white/5 text-center text-gray-500 text-sm"^>
>>fix.ps1 echo           © {new Date().getFullYear()} Faded Barbershop. All Rights Reserved.
>>fix.ps1 echo         ^</div^>
>>fix.ps1 echo       ^</footer^>
>>fix.ps1 echo     ^</div^>
>>fix.ps1 echo   );
>>fix.ps1 echo }
>>fix.ps1 echo '@
>>fix.ps1 echo Set-Content -Path "app\page.jsx" -Value $page -Encoding UTF8

>>fix.ps1 echo $bookPage = @'
>>fix.ps1 echo 'use client';
>>fix.ps1 echo import { useState } from 'react';
>>fix.ps1 echo import { CheckCircle } from 'lucide-react';
>>fix.ps1 echo export default function BookingPage() {
>>fix.ps1 echo   const [form, setForm] = useState({ name: '', phone: '', service: 'Classic Haircut', date: '', time: '' });
>>fix.ps1 echo   const [status, setStatus] = useState('');
>>fix.ps1 echo   const handleChange = (e) =^> setForm({...form, [e.target.name]: e.target.value});
>>fix.ps1 echo   const handleSubmit = (e) =^> {
>>fix.ps1 echo     e.preventDefault();
>>fix.ps1 echo     const msg = encodeURIComponent(`New Booking Request\n\nName: ${form.name}\nPhone: ${form.phone}\nService: ${form.service}\nDate: ${form.date}\nTime: ${form.time}`);
>>fix.ps1 echo     const smsUrl = `sms:+17806656465?^&body=${msg}`;
>>fix.ps1 echo     window.location.href = smsUrl;
>>fix.ps1 echo     setStatus('Your text message app should have opened. Please hit send to notify the barbershop!');
>>fix.ps1 echo   };
>>fix.ps1 echo   return (
>>fix.ps1 echo     ^<div className="min-h-screen pt-32 pb-20 px-6 flex justify-center"^>
>>fix.ps1 echo       ^<div className="bg-dark2 p-10 rounded-2xl border border-gold/20 max-w-xl w-full"^>
>>fix.ps1 echo         ^<h1 className="text-4xl font-bold mb-2 text-center font-cinzel text-gold"^>Book an Appointment^</h1^>
>>fix.ps1 echo         ^<p className="text-gray-400 text-center mb-8"^>Fill out the form to secure your slot.^</p^>
>>fix.ps1 echo         ^<form onSubmit={handleSubmit} className="flex flex-col gap-4"^>
>>fix.ps1 echo           ^<input type="text" name="name" placeholder="Full Name" required value={form.name} onChange={handleChange} className="input-field" /^>
>>fix.ps1 echo           ^<input type="tel" name="phone" placeholder="Phone Number" required value={form.phone} onChange={handleChange} className="input-field" /^>
>>fix.ps1 echo           ^<select name="service" value={form.service} onChange={handleChange} className="input-field"^>
>>fix.ps1 echo             ^<option^>Classic Haircut^</option^>
>>fix.ps1 echo             ^<option^>Skin Fade^</option^>
>>fix.ps1 echo             ^<option^>Beard Trim^</option^>
>>fix.ps1 echo             ^<option^>Kids Cut^</option^>
>>fix.ps1 echo             ^<option^>Hot Towel Shave^</option^>
>>fix.ps1 echo             ^<option^>Haircut ^& Beard Combo^</option^>
>>fix.ps1 echo           ^</select^>
>>fix.ps1 echo           ^<input type="date" name="date" required value={form.date} onChange={handleChange} className="input-field" /^>
>>fix.ps1 echo           ^<input type="time" name="time" required value={form.time} onChange={handleChange} className="input-field" /^>
>>fix.ps1 echo           ^<button type="submit" className="btn-3d w-full mt-4"^>Confirm Booking^</button^>
>>fix.ps1 echo         ^</form^>
>>fix.ps1 echo         {status ^&^& ^<div className="mt-6 text-center text-gold flex items-center justify-center gap-2"^>^<CheckCircle /^>{status}^</div^>}
>>fix.ps1 echo       ^</div^>
>>fix.ps1 echo     ^</div^>
>>fix.ps1 echo   );
>>fix.ps1 echo }
>>fix.ps1 echo '@
>>fix.ps1 echo Set-Content -Path "app\book\page.jsx" -Value $bookPage -Encoding UTF8

powershell -ExecutionPolicy Bypass -File fix.ps1
del fix.ps1

echo ==========================================
echo SUCCESS! Bug fixed and more services added.
echo - SMS booking link fixed (bypassed Batch bug).
echo - Added 6 premium services to the Services section.
echo ==========================================
pause