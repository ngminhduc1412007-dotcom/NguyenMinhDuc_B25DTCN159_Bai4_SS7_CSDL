-- Trong logic Boolean toán tử IN tương đương với một chuỗi các phép toán OR nên NOT IN là phủ định của chuỗi OR đó
-- khiến kết quả trả về đều là FALSE đối với NULL
-- Mệnh đề WHERE trong SQL chỉ cho phép các bản ghi đi qua nếu biểu thức đánh giá là TRUE mọi gía trị khác TRUE 
-- đều khiến mệnh đề này không họat động gây ra toàn bộ truy vấn bên ngoài sụp đổ 

-- Câu lệnh đúng
select *
from Courses
where id not in (
    select course_id
    from Enrollments
    where course_id is not null
);