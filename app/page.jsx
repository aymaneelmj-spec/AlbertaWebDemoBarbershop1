'use client';
import { motion } from 'framer-motion';
import { Scissors, Clock, MapPin, Phone, Sparkles } from 'lucide-react';
import Link from 'next/link';
const services = [
  { icon: Scissors, title: 'Classic Cuts', desc: 'Timeless styles tailored to your preference.' },
  { icon: Sparkles, title: 'Skin Fades', desc: 'Seamless blends from skin to length.' },
  { icon: Clock, title: 'Beard Grooming', desc: 'Razor-sharp lineups and beard sculpting.' }
];
export default function Home() {
  return (
    <div>
      <header className="min-h-screen flex flex-col justify-center items-center text-center relative">
        <div className="absolute inset-0 bg-black/60 z-10"></div>
        <div className="absolute inset-0 bg-[url('https://images.unsplash.com/photo-1503951914875-452162b0f3f1?q=80^&w=2070^&auto=format^&fit=crop')] bg-cover bg-center"></div>
        <div className="z-20 px-6">
          <motion.h1 initial={{opacity:0, y:50}} animate={{opacity:1, y:0}} transition={{duration:1}} className="text-6xl md:text-8xl font-bold mb-4 gradient-text">FADED BARBERSHOP</motion.h1>
          <motion.p initial={{opacity:0, y:50}} animate={{opacity:1, y:0}} transition={{duration:1, delay:0.5}} className="text-xl md:text-2xl text-gray-300 uppercase tracking-widest mb-8">Where Quality Meets Service</motion.p>
          <motion.div initial={{opacity:0, y:50}} animate={{opacity:1, y:0}} transition={{duration:1, delay:1}} className="flex flex-col gap-4 items-center text-gray-200 mb-10">
            <p className="flex items-center gap-3"><MapPin className="text-gold" /> 6610 127 Ave NW, Edmonton, AB</p>
            <p className="flex items-center gap-3"><Phone className="text-gold" /> +1 780-752-3233</p>
          </motion.div>
          <motion.div initial={{opacity:0, y:50}} animate={{opacity:1, y:0}} transition={{duration:1, delay:1.5}}>
            <Link href="/book" className="btn-3d">Book Appointment</Link>
          </motion.div>
        </div>
      </header>
      <section id="services" className="py-24 bg-dark2 px-6 text-center">
        <h2 className="text-4xl md:text-5xl font-bold mb-12 text-white font-cinzel">Our Services</h2>
        <div className="flex flex-wrap justify-center gap-8 max-w-5xl mx-auto">
          {services.map((s, i) => (
            <motion.div key={i} initial={{opacity:0, y:50}} whileInView={{opacity:1, y:0}} viewport={{once:true}} transition={{duration:0.5, delay:i*0.2}} className="bg-dark p-10 rounded-xl border border-white/5 hover:border-gold/50 transition-all hover:-translate-y-2 max-w-sm">
              <s.icon className="text-gold text-5xl mb-4 mx-auto" />
              <h3 className="text-2xl font-bold mb-3 font-cinzel">{s.title}</h3>
              <p className="text-gray-400">{s.desc}</p>
            </motion.div>
          ))}
        </div>
      </section>
      <section className="py-24 px-6">
        <h2 className="text-4xl md:text-5xl font-bold mb-12 text-center font-cinzel">Visit Us</h2>
        <div className="max-w-5xl mx-auto rounded-2xl overflow-hidden border border-gold/20">
          <iframe src="https://maps.google.com/maps?q=6610%20127%20Ave%20NW%2C%20Edmonton%2C%20AB^&t=^&z=13^&ie=UTF8^&iwloc=^&output=embed" width="100%" height="450" style={{border:0}} allowFullScreen="" loading="lazy"></iframe>
        </div>
      </section>
    </div>
  );
}