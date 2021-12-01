video = VideoReader('3Docean.mov');

wVideo = VideoWriter('img\\16x16\\16x16myVideo.avi');
wVideo.FrameRate =1;
wcVideo = VideoWriter('compressed\\16x16\\16x16CompressedMyVideo.avi');
wcVideo.FrameRate =1;

open(wVideo);
open(wcVideo);

v = read(video,[1 10]);

for i = 1:10
    frame = v(:,:,:,i);
    
    imwrite(frame,strcat('.\\img\\img',int2str(i),'.png'));
    writeVideo(wVideo,frame);
    cframe = compress(frame, 16);
    imwrite(cframe,strcat('.\\compressed\\16x16\\16x16compressedImg',int2str(i),'.png'));
    writeVideo(wcVideo,cframe);
end

close(wVideo);
close(wcVideo);


#include<iostream>
#include<string.h>

using namespace std;
main() { 
   char s[] = "Hello\0Hi";
   
   cout<<strlen(s)<<" "<<sizeof(s);
}



Q - Special symbol permitted with in the identifier name.

#include<iostream>

using namespace std;
main() {
   char s[] = "Fine";
	*s = 'N';
   
   cout<<s<<endl;
}

Q - What is the size of ‘int’?


void f(int x) {

}

int f(signed x) { 
   return 1;
}

main() {

}

Q - Abstract class is __

A - A class must contain all pure virtual functions

B - A class must contain at least one pure virtual function

C - A class may not contain pure virtual function.

D - A class must contain pure virtual function defined outside the class.


#include<iostream>

using namespace std;
class Base {
public:
   void f() {
      cout<<"Base\n";
   }
};

class Derived:public Base {
public:
   void f() {
      cout<<"Derived\n";
   }
};
main() {
   Base *p = new Derived(); 
   
   p->f();
}

A - Base

B - Derived

C - Compile error

D - None of the above.

#include<iostream>

using namespace std;
class abc { 
   void f();
   void g();
   int x;
};

main() {
   cout<<sizeof(abc)<<endl;
}


#include<iostream>

using namespace std;
main() {
   char s[] = "hello", t[] = "hello";
   if(s==t)
      cout<<"eqaul strings";
}

A - Equal strings

B - Unequal strings

C - No output

D - Compilation error


Q - Which is the storage specifier used to modify the member variable even though the class object is a constant object?

A - auto

B - register

C - static

D - mutable

Q - Designer of C++ programming language.

A - Charles Babbage

B - Dennis Ritchie

C - Brain Kernighan

D - Bjarne Stroustrup



#include<iostream>

using namespace std;
main() {
   char s[] = "hello", t[] = "hello";
   if(s==t)
      cout<<"eqaul strings";
}
A - Equal strings

B - Unequal strings

C - No output

D - Compilation error


#include<iostream>

using namespace std;
main() {
   char s[] = "Fine";
	*s = 'N';
   
   cout<<s<<endl;
}
A - Fine

B - Nine

C - Compile error

D - Runtime error