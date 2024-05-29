package deploy.stratus.ees.impl;

import java.io.IOException;
import java.io.UncheckedIOException;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

import deploy.stratus.ees.Files;
import io.ciera.runtime.summit.components.IComponent;
import io.ciera.runtime.summit.util.Utility;

public class FilesImpl<C extends IComponent<C>> extends Utility<C> implements Files {

	public FilesImpl(C context) {
		super(context);
	}

	public void copyFile(final String p_src, final String p_dst) {
		try {
			java.nio.file.Files.copy(Path.of(p_src), Path.of(p_dst), StandardCopyOption.REPLACE_EXISTING);
		} catch (IOException e) {
			throw new UncheckedIOException(e);
		}
	}

}
