import './globals.css';
import Navbar from '../components/Navbar';
export const metadata = {
  title: 'Faded Barbershop',
  description: "Edmonton's Finest Barbershop",
  icons: { icon: '/icon.svg' }
};
export const viewport = {
  width: 'device-width',
  initialScale: 1,
  maximumScale: 5,
};
export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body className="overflow-x-hidden">
        <Navbar />
        {children}
      </body>
    </html>
  );
}
