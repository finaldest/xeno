Xeno {
	Packages {
		xeno.console.*:latest
		xeno.output.*:latest
		win32:10.0
		events:latest
		threads:latest
		random:latest
	}
}

on events.ProcessStart {
	console.spawnWindow = new Win32 GProcess [window]
	thread.pause(1s)
	for n in 5 {
		thread.startAsChild("Goofy")
		thread.pause(500ms)
	}
}

thread Goofy {
	[window].log .= {([textObjectManifest,colour='.randomCustom(#XXXXXX, base16)',text="goofy ahh script"])}
}
