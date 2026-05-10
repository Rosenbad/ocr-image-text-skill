using System;
using System.IO;
using System.Threading.Tasks;
using Windows.Media.Ocr;
using Windows.Graphics.Imaging;
using Windows.Storage.Streams;

public class OcrHelper
{
    public static async Task<string> RecognizeText(string imagePath)
    {
        byte[] fileBytes = File.ReadAllBytes(imagePath);
        InMemoryRandomAccessStream stream = new InMemoryRandomAccessStream();
        DataWriter writer = new DataWriter(stream);
        writer.WriteBytes(fileBytes);
        await writer.StoreAsync();
        stream.Seek(0);

        BitmapDecoder decoder = await BitmapDecoder.CreateAsync(stream);
        SoftwareBitmap bitmap = await decoder.GetSoftwareBitmapAsync();
        OcrEngine engine = OcrEngine.TryCreateFromUserProfileLanguages();
        OcrResult result = await engine.RecognizeAsync(bitmap);

        writer.Dispose();
        stream.Dispose();
        return result.Text;
    }
}
