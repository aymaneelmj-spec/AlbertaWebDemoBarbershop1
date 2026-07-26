import { NextResponse } from 'next/server';
export async function POST(req) {
  try {
    const body = await req.json();
    console.log('New Booking:', body);
    return NextResponse.json({ success: true, message: 'Booking received' });
  } catch (error) {
    return NextResponse.json({ success: false, message: 'Error' }, { status: 500 });
  }
}