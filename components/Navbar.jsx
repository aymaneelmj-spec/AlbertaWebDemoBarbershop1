'use client';
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
}