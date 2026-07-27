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
    <nav className={ixed w-full bg-black/80 backdrop-blur-md z-50 border-b border-gold/20 transition-transform duration-300 }>
      <div className="max-w-7xl mx-auto flex justify-between items-center p-5">
        <Link href="/" className="text-2xl font-bold text-gold font-cinzel">FADED<span className="text-white ml-2">BARBERSHOP</span></Link>
        <div className="hidden md:flex gap-8 items-center">
          <Link href="/" className="hover:text-gold transition">Home</Link>
          <Link href="/#services" className="hover:text-gold transition">Services</Link>
          <Link href="/book" className="btn-3d !py-2 !px-6 !text-sm">Book Now</Link>
        </div>
        <button className="md:hidden text-gold text-2xl" onClick={() => setOpen(!open)}>â˜°</button>
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
