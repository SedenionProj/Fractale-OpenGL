#version 330 core
out vec4 FragColor;
uniform float time;

float fractal(vec2 p){
    vec2 c = p;
    vec2 z = c;
    float maxIter = 1000;
    for(int i = 0; i<maxIter; i++){
        z = vec2(z.x*z.x-z.y*z.y,2*z.x*z.y)+vec2(0.355534 , 0.337292);
        if(z.x*z.x + z.y * z.y > 4){
            return i/maxIter;
        }
    }
    return 1;
}


void main()
{
    vec2 pos = 5 *(gl_FragCoord.xy - 0.5 * vec2(1920,1080))/1920;
    float color = fractal(pos);
    FragColor = vec4(color,color,color, 1.0f);      //couleur pixel entre 0 et 1    (0 à 255)
}