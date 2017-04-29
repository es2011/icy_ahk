package org.gradle;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Stream;

import org.junit.runner.notification.RunNotifier;

import net.glxn.qrgen.core.image.ImageType;
import net.glxn.qrgen.javase.QRCode;

public class Try {

	public static void main(String[] args) throws IOException, InterruptedException{
		Process p=Runtime.getRuntime().exec("cmd /c c:\\autohotkey\\AutoHotkeyA32.exe c:\\games\\start_game.ahk");
		p.waitFor();
		p=Runtime.getRuntime().exec("cmd /c c:\\autohotkey\\AutoHotkeyA32.exe c:\\games\\left.ahk");
		p.waitFor();
		Thread.sleep(2000);

		p=Runtime.getRuntime().exec("cmd /c c:\\autohotkey\\AutoHotkeyA32.exe c:\\games\\right.ahk");
		
		//		Stream<String> l=Files.lines(FileSystems.getDefault().getPath("C:\\games\\icytower1.5\\profiles\\icy\\icy_stats.txt"));
		//		Pattern pattern = Pattern.compile("Best score ever:\\s+(\\d+)");
		//		l.map(pattern::matcher)
		//		     .filter(Matcher::find)
		//		     .findFirst()
		//		     .ifPresent(matcher -> System.out.println(matcher.group(1)));
		//		
		//		l.close();
		/*byte[] bytes =QRCode.from("Hello World").to(ImageType.JPG).withSize(250, 250).stream().toByteArray();
		new FileOutputStream("c:\\efrat\\test.jpg").write(bytes);
		 */
}
}
