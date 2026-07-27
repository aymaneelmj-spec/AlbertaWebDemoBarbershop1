$page = @'
'use client';
import { useState } from 'react';
import { motion } from 'framer-motion';
import { Scissors, Clock, MapPin, Phone, Sparkles, Star, ChevronDown, Accessibility, CreditCard, Baby, UserCheck, Bath } from 'lucide-react';
import Link from 'next/link';
const heroBg = "https://images.unsplash.com/photo-1503951914875-452162b0f3f1?q=80&w=2070&auto=format&fit=crop";
const images = [
  "https://lh3.googleusercontent.com/gps-cs-s/AHRPTWlAI_-iU9Q6CYk8Ski9alSLDtygo1-V6oi6op-O8NT1TJYxZumlHJuv-KHDXkDYXoSa5EciFb4p2QhUUfvwyrZcCWC28ZADF4ayc8uyk1tKHFpz29ocXLrmE3Ars_LwQPI_TdebzyEo16YF=s406-k-no",
  "https://lh3.googleusercontent.com/gps-cs-s/AHRPTWkKymMBSq69j0ki_9bxY5EQFukrBGiFFwIDfsLnbDw0eone6najxKhgZKWQwGxB0ARHukGEVRO8b7FRwVWzr5q1MqSi8E2tpyR15m0IeZUzOpQtJEvBxs2corrCABE-LUxryHxheT0A9dPK=w203-h360-k-no",
  "https://lh3.googleusercontent.com/gps-cs-s/AHRPTWn04e_v9zxRcc-FE5u5o4evJcfVhP-6Csb70BY2Z0UAQVIfD4EukFILjdjljb3yqN3Hqp5f7RLtMffo3jUe3hfZ6MBZFixc0HOzsZmwAb62t1CZXq0cXy8X5cJCHMywpm698oj_WC95AIop=w203-h152-k-no",
  "https://lh3.googleusercontent.com/gps-cs-s/AHRPTWmevhZ4AIxV_D3K-a42DFiivGQa0SEMPOsMmcJpymIFMbFo05E-NnC4HjqAgHM201xadbcGF5l43Bte-zpHCTckQBbbH32TFDYsgAGA6XmGvTOAAsIYk7qGXZcqkVj7wj_wmphS5dcGXO59=w203-h287-k-no"
];
const services = [
  { icon: Scissors, title: 'Classic Cuts', desc: 'Timeless styles tailored to your preference.' },
  { icon: Sparkles, title: 'Skin Fades', desc: 'Seamless blends from skin to length.' },
  { icon: Clock, title: 'Beard Grooming', desc: 'Razor-sharp lineups and beard sculpting.' }
];
const features = [
  { icon: Accessibility, title: 'Accessibility', desc: 'Wheelchair accessible entrance 
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
  { name: "James R.", text: "Best fade in Edmonton! Always clean lines and great atmosphere.", rating: 5 },
  { name: "Sarah M.", text: "Walked in on a Saturday and was seen right away. Highly recommend for kids too!", rating: 5 },
  { name: "David L.", text: "Professional barbers, accept mobile pay which is super convenient. My go-to spot.", rating: 5 }
];
const faqs = [
  { q: "Do you accept walk-ins?", a: "Yes! We accept walk-ins, but booking an appointment guarantees your slot." },
  { q: "What payments do you accept?", a: "We accept Credit Cards, Debit Cards, and NFC Mobile Payments." },
  { q: "Is the shop wheelchair accessible?", a: "Yes, we have a wheelchair accessible entrance and parking lot." }
];
  const [open, setOpen] = useState(false);
  return (
