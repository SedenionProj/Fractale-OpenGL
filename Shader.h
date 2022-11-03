#pragma once
#include <iostream>
#include <GL/glew.h>
#include <string>
#include <sstream>
#include <iostream>
#include <fstream>

class Shader {
private:
	unsigned int ID;
public:
	Shader(const char* vertexPath, const char* fragmentPath);
	~Shader();
	void Bind() const;
	void Unind() const;
	void setBool(const std::string& name, bool value) const;
	void setInt(const std::string& name, int value) const;
	void setFloat(const std::string& name, float value) const;
	void setVec2(const std::string& name, float v1, float v2) const;
	void setVec3(const std::string& name, float v1, float v2, float v3) const;
};