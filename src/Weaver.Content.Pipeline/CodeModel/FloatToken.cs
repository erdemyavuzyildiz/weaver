using Weaver.Content.Pipeline.Parser;

namespace Weaver.Content.Pipeline.CodeModel
{
	public class FloatToken : LiteralToken
	{
		public float Value { get; private set; }

		public FloatToken(float value, string sourcePath, BufferPosition position)
			: base(LiteralTokenType.Float, sourcePath, position)
		{
			Value = value;
		}

		public override string ToString()
		{
			return Value.ToString();
		}
	}
}