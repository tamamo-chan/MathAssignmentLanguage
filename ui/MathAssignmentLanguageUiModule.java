/*
 * generated by Xtext 2.24.0
 */
package dk.sdu.mmmi.mdsd.ui;

import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.eclipse.xtext.ui.editor.hover.IEObjectHoverProvider;

/**
 * Use this class to register components to be used within the Eclipse IDE.
 */
public class MathAssignmentLanguageUiModule extends AbstractMathAssignmentLanguageUiModule {

	public MathAssignmentLanguageUiModule(AbstractUIPlugin plugin) {
		super(plugin);
		
	}
	
	public Class<? extends IEObjectHoverProvider>
		bindIEObjectHoverProvider() {
		return MathExpEObjectHoverProvider.class;
	}
}

