﻿struct BlinnPhongSurfaceOutput
{
	float3 Diffuse;
	float3 Normal;
	float3 Specular;
	float SpecularPower;
	float Alpha;
};

float4 LightingBlinnPhong(BlinnPhongSurfaceOutput s, Light l, float3 viewDirection)
{
	float3 half = normalize(l.DirectionToLight + viewDirection);
	float diffuse = max(0, dot(s.Normal, l.DirectionToLight));
	
	float normalHalf = max(0.0001f, dot(s.Normal, half));
	float specular = pow(normalHalf, s.SpecularPower);
	
	float4 c;
	c.rgb = (l.Color * s.Diffuse * diffuse + l.Color.rgb * s.Specular.rgb * specular);
	c.a = s.Alpha + l.Color.a * specular;
	return c;
}