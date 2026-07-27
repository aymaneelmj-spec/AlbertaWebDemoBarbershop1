@echo off
chcp 65001 >nul
title Fixing Vercel Build Error

echo Writing correct booking page...

> app\book\page.jsx echo 'use client';
>>app\book\page.jsx echo import { useState } from 'react';
>>app\book\page.jsx echo import { CheckCircle } from 'lucide-react';
>>app\book\page.jsx echo export default function BookingPage() {
>>app\book\page.jsx echo   const [form, setForm] = useState({ name: '', phone: '', service: 'Classic Haircut', date: '', time: '' });
>>app\book\page.jsx echo   const [status, setStatus] = useState('');
>>app\book\page.jsx echo   const handleChange = (e) =^> setForm({...form, [e.target.name]: e.target.value});
>>app\book\page.jsx echo   const handleSubmit = (e) =^> {
>>app\book\page.jsx echo     e.preventDefault();
>>app\book\page.jsx echo     const msg = encodeURIComponent(`New Booking Request\n\nName: ${form.name}\nPhone: ${form.phone}\nService: ${form.service}\nDate: ${form.date}\nTime: ${form.time}`);
>>app\book\page.jsx echo     const smsUrl = `sms:+17806656465?body=${msg}`;
>>app\book\page.jsx echo     window.location.href = smsUrl;
>>app\book\page.jsx echo     setStatus('Your text message app should have opened. Please hit send to notify the barbershop!');
>>app\book\page.jsx echo   };
>>app\book\page.jsx echo   return (
>>app\book\page.jsx echo     ^<div className="min-h-screen pt-32 pb-20 px-6 flex justify-center"^>
>>app\book\page.jsx echo       ^<div className="bg-dark2 p-10 rounded-2xl border border-gold/20 max-w-xl w-full"^>
>>app\book\page.jsx echo         ^<h1 className="text-4xl font-bold mb-2 text-center font-cinzel text-gold"^>Book an Appointment^</h1^>
>>app\book\page.jsx echo         ^<p className="text-gray-400 text-center mb-8"^>Fill out the form to secure your slot.^</p^>
>>app\book\page.jsx echo         ^<form onSubmit={handleSubmit} className="flex flex-col gap-4"^>
>>app\book\page.jsx echo           ^<input type="text" name="name" placeholder="Full Name" required value={form.name} onChange={handleChange} className="input-field" /^>
>>app\book\page.jsx echo           ^<input type="tel" name="phone" placeholder="Phone Number" required value={form.phone} onChange={handleChange} className="input-field" /^>
>>app\book\page.jsx echo           ^<select name="service" value={form.service} onChange={handleChange} className="input-field"^>
>>app\book\page.jsx echo             ^<option^>Classic Haircut^</option^>
>>app\book\page.jsx echo             ^<option^>Skin Fade^</option^>
>>app\book\page.jsx echo             ^<option^>Beard Trim^</option^>
>>app\book\page.jsx echo             ^<option^>Kids Cut^</option^>
>>app\book\page.jsx echo             ^<option^>Hot Towel Shave^</option^>
>>app\book\page.jsx echo             ^<option^>Haircut ^& Beard Combo^</option^>
>>app\book\page.jsx echo           ^</select^>
>>app\book\page.jsx echo           ^<input type="date" name="date" required value={form.date} onChange={handleChange} className="input-field" /^>
>>app\book\page.jsx echo           ^<input type="time" name="time" required value={form.time} onChange={handleChange} className="input-field" /^>
>>app\book\page.jsx echo           ^<button type="submit" className="btn-3d w-full mt-4"^>Confirm Booking^</button^>
>>app\book\page.jsx echo         ^</form^>
>>app\book\page.jsx echo         {status ^&^& ^<div className="mt-6 text-center text-gold flex items-center justify-center gap-2"^>^<CheckCircle /^>{status}^</div^>}
>>app\book\page.jsx echo       ^</div^>
>>app\book\page.jsx echo     ^</div^>
>>app\book\page.jsx echo   );
>>app\book\page.jsx echo }

echo ==========================================
echo SUCCESS! The booking page is fixed.
echo.
echo VERY IMPORTANT: You must push this to GitHub!
echo Open your terminal and run these 3 commands:
echo git add .
echo git commit -m "Fixed Vercel build error and SMS booking"
echo git push
echo ==========================================
pause