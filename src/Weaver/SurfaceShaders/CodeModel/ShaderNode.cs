namespace Weaver.SurfaceShaders.CodeModel
{
	public class ShaderNode : ParseNode
	{
		public string Name { get; set; }
		public ShaderPropertyNodeCollection Properties { get; set; }
		public SurfaceNode Surface { get; set; }
	}
}