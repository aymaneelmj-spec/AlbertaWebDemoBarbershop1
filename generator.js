const fs = require('fs');
const { execSync } = require('child_process');
fs.mkdirSync('app', { recursive: true });
fs.mkdirSync('app/book', { recursive: true });
fs.mkdirSync('app/api/book', { recursive: true });
fs.mkdirSync('components', { recursive: true });

const pkg = {
  "name": "faded-barbershop",
  "version": "0.1.0",
  "private": true,
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "start": "next start"
  },
  "dependencies": {
    "next": "14.2.3",
    "react": "^18.3.1",
    "react-dom": "^18.3.1",
    "framer-motion": "^11.1.9",
    "lucide-react": "^0.378.0"
  },
  "devDependencies": {
    "autoprefixer": "^10.4.19",
    "postcss": "^8.4.38",
    "tailwindcss": "^3.4.3"
  }
};
fs.writeFileSync('package.json', JSON.stringify(pkg, null, 2));
fs.writeFileSync('next.config.mjs', 'export default { reactStrictMode: true };');
fs.writeFileSync('postcss.config.js', 'module.exports = { plugins: { tailwindcss: {}, autoprefixer: {} } };');
fs.writeFileSync('tailwind.config.js', "/** @type {import('tailwindcss').Config} */ \n module.exports = { content: ['./app/**/*.{js,ts,jsx,tsx,mdx}', './components/**/*.{js,ts,jsx,tsx,mdx}'], theme: { extend: { colors: { gold: '#d4af37', dark: '#0a0a0a', dark2: '#141414' } } }, plugins: [] };");
fs.writeFileSync('.gitignore', 'node_modules\n.vercel\n.env');

const css = `@import url('https://fonts.googleapis.com/css2?family=Cinzel:wght@400;700;900&family=Poppins:wght@300;400;500;600&display=swap');
@tailwind base; @tailwind components; @tailwind utilities;
body { font-family: 'Poppins', sans-serif; background: #0a0a0a; color: #fff; }
h1,h2,h3,.font-cinzel { font-family: 'Cinzel', serif; }
.btn-3d { background: linear-gradient(180deg, #e6c247 0); color: #111; padding: 18px 45px; border-radius: 8px; font-family: 'Cinzel', serif; font-weight: 700; font-size: 1.1rem; text-transform: uppercase; letter-spacing: 2px; box-shadow: 0 6px 0 #8a6a14, 0 12px 20px rgba(0,0,0,0.5); transition: all 0.15s ease; display: inline-block; cursor: pointer; border: none; }
.btn-3d:hover { transform: translateY(2px); box-shadow: 0 4px 0 #8a6a14, 0 8px 15px rgba(0,0,0,0.6); }
.btn-3d:active { transform: translateY(6px); box-shadow: 0 0 0 #8a6a14, 0 2px 5px rgba(0,0,0,0.5); }
.gradient-text { background: linear-gradient(-45deg, #d4af37, #fff, #d4af37, #aa8c2c); background-size: 400; -webkit-background-clip: text; background-clip: text; -webkit-text-fill-color: transparent; animation: gradient 5s ease infinite; }
@keyframes gradient { 0 0; } 50 100; } 100 0; } }
.input-field { background: #141414; border: 1px solid #333; padding: 14px; border-radius: 6px; color: #fff; width: 100 none; transition: border 0.3s; font-family: 'Poppins', sans-serif; }
.input-field:focus { border-color: #d4af37; }
`;
fs.writeFileSync('app/globals.css', css);

const layout = `import './globals.css';
import Navbar from '@/components/Navbar';
export const metadata = { title: 'Faded Barbershop', description: "Edmonton's Finest Barbershop" };
export default function RootLayout({ children }) {
  return (<html lang="en"><body><Navbar />{children}</body></html>);
}`;
fs.writeFileSync('app/layout.jsx', layout);

const navbar = `'use client';
import { useState } from 'react';
import Link from 'next/link';
export default function Navbar() {
  const [open, setOpen] = useState(false);
  return (
    <nav className="fixed w-full bg-black/80 backdrop-blur-md z-50 border-b border-gold/20">
      <div className="max-w-7xl mx-auto flex justify-between items-center p-5">
        <Link href="/" className="text-2xl font-bold text-gold font-cinzel">FADED<span className="text-white ml-2">BARBERSHOP</span></Link>
        <div className="hidden md:flex gap-8 items-center">
          <Link href="/" className="hover:text-gold transition">Home</Link>
          <Link href="/#services" className="hover:text-gold transition">Services</Link>
          <Link href="/book" className="btn-3d !py-2 !px-6 !text-sm">Book Now</Link>
        </div>
        <button className="md:hidden text-gold text-2xl" onClick={() => setOpen(!open)}>☰</button>
      </div>
      {open && (<div className="md:hidden flex flex-col items-center gap-4 pb-5 bg-black"><Link href="/" onClick={()=>setOpen(false)}>Home</Link><Link href="/#services" onClick={()=>setOpen(false)}>Services</Link><Link href="/book" onClick={()=>setOpen(false)} className="btn-3d !py-2 !px-6 !text-sm">Book Now</Link></div>)}
    </nav>
  );
}`;
fs.writeFileSync('components/Navbar.jsx', navbar);

const homePage = `'use client';
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
}`;
fs.writeFileSync('app/page.jsx', homePage);

const bookPage = `'use client';
import { useState } from 'react';
import { CheckCircle } from 'lucide-react';
export default function BookingPage() {
  const [form, setForm] = useState({ name: '', phone: '', service: 'Haircut', date: '', time: '' });
  const [status, setStatus] = useState('');
  const handleChange = (e) => setForm({...form, [e.target.name]: e.target.value});
  const handleSubmit = async (e) => {
    e.preventDefault();
    setStatus('Booking in progress...');
    const res = await fetch('/api/book', { method: 'POST', headers: {'Content-Type':'application/json'}, body: JSON.stringify(form) });
    const data = await res.json();
    if (data.success) { setStatus('Booking confirmed! We will call you shortly.'); setForm({ name: '', phone: '', service: 'Haircut', date: '', time: '' }); } 
    else { setStatus('Error booking. Please call us.'); }
  };
  return (
    <div className="min-h-screen pt-32 pb-20 px-6 flex justify-center">
      <div className="bg-dark2 p-10 rounded-2xl border border-gold/20 max-w-xl w-full">
        <h1 className="text-4xl font-bold mb-2 text-center font-cinzel text-gold">Book an Appointment</h1>
        <p className="text-gray-400 text-center mb-8">Fill out the form to secure your slot.</p>
        <form onSubmit={handleSubmit} className="flex flex-col gap-4">
          <input type="text" name="name" placeholder="Full Name" required value={form.name} onChange={handleChange} className="input-field" />
          <input type="tel" name="phone" placeholder="Phone Number" required value={form.phone} onChange={handleChange} className="input-field" />
          <select name="service" value={form.service} onChange={handleChange} className="input-field">
            <option>Haircut</option><option>Skin Fade</option><option>Beard Trim</option><option>Haircut & Beard</option>
          </select>
          <input type="date" name="date" required value={form.date} onChange={handleChange} className="input-field" />
          <input type="time" name="time" required value={form.time} onChange={handleChange} className="input-field" />
          <button type="submit" className="btn-3d w-full mt-4">Confirm Booking</button>
        </form>
        {status && <div className="mt-6 text-center text-gold flex items-center justify-center gap-2"><CheckCircle />{status}</div>}
      </div>
    </div>
  );
}`;
fs.writeFileSync('app/book/page.jsx', bookPage);

const apiRoute = `import { NextResponse } from 'next/server';
export async function POST(req) {
  try {
    const body = await req.json();
    console.log('New Booking:', body);
    return NextResponse.json({ success: true, message: 'Booking received' });
  } catch (error) {
    return NextResponse.json({ success: false, message: 'Error' }, { status: 500 });
  }
}`;
fs.writeFileSync('app/api/book/route.js', apiRoute);

console.log('Installing dependencies...');
execSync('npm install', { stdio: 'inherit' });
console.log('Initializing Git...');
execSync('git init', { stdio: 'inherit' });
execSync('git add .', { stdio: 'inherit' });
execSync('git commit -m "Initial dynamic Faded Barbershop Next.js project"', { stdio: 'inherit' });
console.log('\\n==========================================');
console.log('SUCCESS! Your Dynamic Next.js app is ready.');
console.log('==========================================');
console.log('To run locally: cd faded-barbershop && npm run dev');
console.log('To deploy: Push to GitHub and import to Vercel.');
