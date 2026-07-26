import './globals.css';
import Navbar from '@/components/Navbar';
export const metadata = { title: 'Faded Barbershop', description: "Edmonton's Finest Barbershop" };
export default function RootLayout({ children }) {
  return (<html lang="en"><body><Navbar />{children}</body></html>);
}