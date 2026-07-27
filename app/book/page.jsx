'use client';
import { useState } from 'react';
import { CheckCircle } from 'lucide-react';
export default function BookingPage() {
  const [form, setForm] = useState({ name: '', phone: '', service: 'Haircut', date: '', time: '' });
  const [status, setStatus] = useState('');
  const handleChange = (e) => setForm({...form, [e.target.name]: e.target.value});
  const handleSubmit = (e) => {
    e.preventDefault();
    const message = `New Booking Request"D:\Downloads\Bussiness Freelance\canada\barbershops\Alberta\albetraWebDemo\faded-barbershop\update.bat"A"D:\Downloads\Bussiness Freelance\canada\barbershops\Alberta\albetraWebDemo\faded-barbershop\update.bat"AName: ${form.name}"D:\Downloads\Bussiness Freelance\canada\barbershops\Alberta\albetraWebDemo\faded-barbershop\update.bat"APhone: ${form.phone}"D:\Downloads\Bussiness Freelance\canada\barbershops\Alberta\albetraWebDemo\faded-barbershop\update.bat"AService: ${form.service}"D:\Downloads\Bussiness Freelance\canada\barbershops\Alberta\albetraWebDemo\faded-barbershop\update.bat"ADate: ${form.date}"D:\Downloads\Bussiness Freelance\canada\barbershops\Alberta\albetraWebDemo\faded-barbershop\update.bat"ATime: ${form.time}`;
    const smsUrl = `sms:+17806656465?
    window.location.href = smsUrl;
    setStatus('Your text message app should have opened. Please hit send to notify the barbershop!');
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
}
