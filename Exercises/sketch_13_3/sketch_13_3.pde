PFont font1, font2;
font1 = loadFont("AdobeArabic-BoldItalic-25.vlw");
font2 = loadFont("AdobeMingStd-Light-25.vlw"); fill(0);
// Set the font to Ziggurat-32.vlw textFont(font1);
text("Hi", 6, 45);
// Set the font to ZigguratItalic-32.vlw textFont(font2);
textFont(font2);
text("Hello", 2, 80);

