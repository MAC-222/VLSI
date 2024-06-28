typedef struct packed { 
	byte id;
	bit[7:0]experience;
	logic[15:0] salary;

} employee_details_s;

module emp;

  employee_details_s emp1; 
  initial begin
    emp1.id =43;
    emp1.experience = 2;
    emp1.salary = 25000;
    $display(" emp_info1.id = %p", emp1.id);
    $display(" emp_info1.experience = %p", emp1.experience);
    $display(" emp_info1.salary = %p", emp1.salary);
  end
endmodule
