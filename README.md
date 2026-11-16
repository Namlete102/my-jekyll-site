# my-jekyll-site

Đây là dự án web của tôi, có sự hợp tác của con hàng AI đến từ người anh em Trung Quốc là Deepseek. 

Bên cạnh đó là các nguồn tham khảo từ các kho lưu trữ Github trên mạng mà tôi đã copy và tái sử dụng, bao gồm: 

+ Tham khảo CSS: https://github.com/vincentdoerig/latex-css/blob/master/style.css 
+ Tham khảo layouts, plugins, includes: https://github.com/ryanmcdermott/jekyll-latex/blob/master/_layouts/post.liquid

Để chạy công thức toán học trên web, tôi đã sử dụng Mathjax: 

```html
<!-- MathJax để render công thức $$...$$ -->
  <script>
    window.MathJax = {
      tex: { inlineMath: [['$', '$'], ['\\(', '\\)']],
             displayMath: [['$$','$$'], ['\\[','\\]']] },
      svg: { fontCache: 'global' }
    };
  </script>
  <script async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-svg.js"></script>
```