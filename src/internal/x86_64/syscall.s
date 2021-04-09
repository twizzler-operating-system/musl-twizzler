.global __syscall
.hidden __syscall
.type __syscall,@function
.extern __twix_syscall_target
.weak __twix_syscall_target
__syscall:
	movq %rdi,%rax
	movq %rsi,%rdi
	movq %rdx,%rsi
	movq %rcx,%rdx
	movq %r8,%r10
	movq %r9,%r8
	movq 8(%rsp),%r9
	call __twix_syscall_target
	ret
