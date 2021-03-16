package dk.sdu.mmmi.mdsd.ui
import static extension org.eclipse.emf.ecore.util.EcoreUtil.*
import org.eclipse.xtext.ui.editor.hover.html.DefaultEObjectHoverProvider
import dk.sdu.mmmi.mdsd.mathAssignmentLanguage.MathExp
import static extension dk.sdu.mmmi.mdsd.generator.MathAssignmentLanguageGenerator.compute
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.util.Diagnostician

class MathExpEObjectHoverProvider extends DefaultEObjectHoverProvider {
	override getHoverInfoAsHtml(EObject o) {
	if (o instanceof MathExp && o.programHasNoError) {
	val exp = o as MathExp
	return '''
	<p>
	result : <b>«exp.compute»</b>
	</p>
	 '''
	} else
		return super.getHoverInfoAsHtml(o)
	}
	def programHasNoError(EObject o) {
		Diagnostician.INSTANCE.validate(o.rootContainer).
		children.empty
	}
	
}