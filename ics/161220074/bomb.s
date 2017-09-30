
bomb：     文件格式 elf32-i386
78 4 -114 56
The basic unit of computer storage is the bit.
221 220 217 212 205 196
129 458
4 4
aacccc
4 6 2 5 3 7 1
phase_defused
Disassembly of section .init:

000006a0 <_init>:
 6a0:	53                   	push   %ebx
 6a1:	83 ec 08             	sub    $0x8,%esp
 6a4:	e8 77 01 00 00       	call   820 <__x86.get_pc_thunk.bx>
 6a9:	81 c3 57 39 00 00    	add    $0x3957,%ebx
 6af:	8b 83 e8 ff ff ff    	mov    -0x18(%ebx),%eax
 6b5:	85 c0                	test   %eax,%eax
 6b7:	74 05                	je     6be <_init+0x1e>
 6b9:	e8 1a 01 00 00       	call   7d8 <__ctype_b_loc@plt+0x18>
 6be:	83 c4 08             	add    $0x8,%esp
 6c1:	5b                   	pop    %ebx
 6c2:	c3                   	ret

Disassembly of section .plt:

000006d0 <printf@plt-0x10>:
 6d0:	ff b3 04 00 00 00    	pushl  0x4(%ebx)
 6d6:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
 6dc:	00 00                	add    %al,(%eax)
	...

000006e0 <printf@plt>:
 6e0:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
 6e6:	68 00 00 00 00       	push   $0x0
 6eb:	e9 e0 ff ff ff       	jmp    6d0 <_init+0x30>

000006f0 <fflush@plt>:
 6f0:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
 6f6:	68 08 00 00 00       	push   $0x8
 6fb:	e9 d0 ff ff ff       	jmp    6d0 <_init+0x30>

00000700 <fgets@plt>:
 700:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
 706:	68 10 00 00 00       	push   $0x10
 70b:	e9 c0 ff ff ff       	jmp    6d0 <_init+0x30>

00000710 <signal@plt>:
 710:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
 716:	68 18 00 00 00       	push   $0x18
 71b:	e9 b0 ff ff ff       	jmp    6d0 <_init+0x30>

00000720 <sleep@plt>:
 720:	ff a3 1c 00 00 00    	jmp    *0x1c(%ebx)
 726:	68 20 00 00 00       	push   $0x20
 72b:	e9 a0 ff ff ff       	jmp    6d0 <_init+0x30>

00000730 <getenv@plt>:
 730:	ff a3 20 00 00 00    	jmp    *0x20(%ebx)
 736:	68 28 00 00 00       	push   $0x28
 73b:	e9 90 ff ff ff       	jmp    6d0 <_init+0x30>

00000740 <puts@plt>:
 740:	ff a3 24 00 00 00    	jmp    *0x24(%ebx)
 746:	68 30 00 00 00       	push   $0x30
 74b:	e9 80 ff ff ff       	jmp    6d0 <_init+0x30>

00000750 <exit@plt>:
 750:	ff a3 28 00 00 00    	jmp    *0x28(%ebx)
 756:	68 38 00 00 00       	push   $0x38
 75b:	e9 70 ff ff ff       	jmp    6d0 <_init+0x30>

00000760 <strlen@plt>:
 760:	ff a3 2c 00 00 00    	jmp    *0x2c(%ebx)
 766:	68 40 00 00 00       	push   $0x40
 76b:	e9 60 ff ff ff       	jmp    6d0 <_init+0x30>

00000770 <__libc_start_main@plt>:
 770:	ff a3 30 00 00 00    	jmp    *0x30(%ebx)
 776:	68 48 00 00 00       	push   $0x48
 77b:	e9 50 ff ff ff       	jmp    6d0 <_init+0x30>

00000780 <__isoc99_sscanf@plt>:
 780:	ff a3 34 00 00 00    	jmp    *0x34(%ebx)
 786:	68 50 00 00 00       	push   $0x50
 78b:	e9 40 ff ff ff       	jmp    6d0 <_init+0x30>

00000790 <fopen@plt>:
 790:	ff a3 38 00 00 00    	jmp    *0x38(%ebx)
 796:	68 58 00 00 00       	push   $0x58
 79b:	e9 30 ff ff ff       	jmp    6d0 <_init+0x30>

000007a0 <strtok@plt>:
 7a0:	ff a3 3c 00 00 00    	jmp    *0x3c(%ebx)
 7a6:	68 60 00 00 00       	push   $0x60
 7ab:	e9 20 ff ff ff       	jmp    6d0 <_init+0x30>

000007b0 <atoi@plt>:
 7b0:	ff a3 40 00 00 00    	jmp    *0x40(%ebx)
 7b6:	68 68 00 00 00       	push   $0x68
 7bb:	e9 10 ff ff ff       	jmp    6d0 <_init+0x30>

000007c0 <__ctype_b_loc@plt>:
 7c0:	ff a3 44 00 00 00    	jmp    *0x44(%ebx)
 7c6:	68 70 00 00 00       	push   $0x70
 7cb:	e9 00 ff ff ff       	jmp    6d0 <_init+0x30>

Disassembly of section .plt.got:

000007d0 <.plt.got>:
 7d0:	ff a3 e4 ff ff ff    	jmp    *-0x1c(%ebx)
 7d6:	66 90                	xchg   %ax,%ax
 7d8:	ff a3 e8 ff ff ff    	jmp    *-0x18(%ebx)
 7de:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

000007e0 <_start>:
     7e0:	31 ed                	xor    %ebp,%ebp
     7e2:	5e                   	pop    %esi
     7e3:	89 e1                	mov    %esp,%ecx
     7e5:	83 e4 f0             	and    $0xfffffff0,%esp
     7e8:	50                   	push   %eax
     7e9:	54                   	push   %esp
     7ea:	52                   	push   %edx
     7eb:	e8 22 00 00 00       	call   812 <_start+0x32>
     7f0:	81 c3 10 38 00 00    	add    $0x3810,%ebx
     7f6:	8d 83 00 d9 ff ff    	lea    -0x2700(%ebx),%eax
     7fc:	50                   	push   %eax
     7fd:	8d 83 a0 d8 ff ff    	lea    -0x2760(%ebx),%eax
     803:	50                   	push   %eax
     804:	51                   	push   %ecx
     805:	56                   	push   %esi
     806:	ff b3 f4 ff ff ff    	pushl  -0xc(%ebx)
     80c:	e8 5f ff ff ff       	call   770 <__libc_start_main@plt>
     811:	f4                   	hlt
     812:	8b 1c 24             	mov    (%esp),%ebx
     815:	c3                   	ret
     816:	66 90                	xchg   %ax,%ax
     818:	66 90                	xchg   %ax,%ax
     81a:	66 90                	xchg   %ax,%ax
     81c:	66 90                	xchg   %ax,%ax
     81e:	66 90                	xchg   %ax,%ax

00000820 <__x86.get_pc_thunk.bx>:
     820:	8b 1c 24             	mov    (%esp),%ebx
     823:	c3                   	ret
     824:	66 90                	xchg   %ax,%ax
     826:	66 90                	xchg   %ax,%ax
     828:	66 90                	xchg   %ax,%ax
     82a:	66 90                	xchg   %ax,%ax
     82c:	66 90                	xchg   %ax,%ax
     82e:	66 90                	xchg   %ax,%ax

00000830 <deregister_tm_clones>:
     830:	e8 17 01 00 00       	call   94c <__x86.get_pc_thunk.dx>
     835:	81 c2 cb 37 00 00    	add    $0x37cb,%edx
     83b:	8d 8a 5c 02 00 00    	lea    0x25c(%edx),%ecx
     841:	8d 82 5f 02 00 00    	lea    0x25f(%edx),%eax
     847:	29 c8                	sub    %ecx,%eax
     849:	83 f8 06             	cmp    $0x6,%eax
     84c:	76 17                	jbe    865 <deregister_tm_clones+0x35>
     84e:	8b 82 e0 ff ff ff    	mov    -0x20(%edx),%eax
     854:	85 c0                	test   %eax,%eax
     856:	74 0d                	je     865 <deregister_tm_clones+0x35>
     858:	55                   	push   %ebp
     859:	89 e5                	mov    %esp,%ebp
     85b:	83 ec 14             	sub    $0x14,%esp
     85e:	51                   	push   %ecx
     85f:	ff d0                	call   *%eax
     861:	83 c4 10             	add    $0x10,%esp
     864:	c9                   	leave
     865:	f3 c3                	repz ret
     867:	89 f6                	mov    %esi,%esi
     869:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000870 <register_tm_clones>:
     870:	e8 d7 00 00 00       	call   94c <__x86.get_pc_thunk.dx>
     875:	81 c2 8b 37 00 00    	add    $0x378b,%edx
     87b:	55                   	push   %ebp
     87c:	8d 8a 5c 02 00 00    	lea    0x25c(%edx),%ecx
     882:	8d 82 5c 02 00 00    	lea    0x25c(%edx),%eax
     888:	89 e5                	mov    %esp,%ebp
     88a:	53                   	push   %ebx
     88b:	29 c8                	sub    %ecx,%eax
     88d:	c1 f8 02             	sar    $0x2,%eax
     890:	83 ec 04             	sub    $0x4,%esp
     893:	89 c3                	mov    %eax,%ebx
     895:	c1 eb 1f             	shr    $0x1f,%ebx
     898:	01 d8                	add    %ebx,%eax
     89a:	d1 f8                	sar    %eax
     89c:	74 14                	je     8b2 <register_tm_clones+0x42>
     89e:	8b 92 fc ff ff ff    	mov    -0x4(%edx),%edx
     8a4:	85 d2                	test   %edx,%edx
     8a6:	74 0a                	je     8b2 <register_tm_clones+0x42>
     8a8:	83 ec 08             	sub    $0x8,%esp
     8ab:	50                   	push   %eax
     8ac:	51                   	push   %ecx
     8ad:	ff d2                	call   *%edx
     8af:	83 c4 10             	add    $0x10,%esp
     8b2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     8b5:	c9                   	leave
     8b6:	c3                   	ret
     8b7:	89 f6                	mov    %esi,%esi
     8b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000008c0 <__do_global_dtors_aux>:
     8c0:	55                   	push   %ebp
     8c1:	89 e5                	mov    %esp,%ebp
     8c3:	53                   	push   %ebx
     8c4:	e8 57 ff ff ff       	call   820 <__x86.get_pc_thunk.bx>
     8c9:	81 c3 37 37 00 00    	add    $0x3737,%ebx
     8cf:	83 ec 04             	sub    $0x4,%esp
     8d2:	80 bb 60 02 00 00 00 	cmpb   $0x0,0x260(%ebx)
     8d9:	75 27                	jne    902 <__do_global_dtors_aux+0x42>
     8db:	8b 83 e4 ff ff ff    	mov    -0x1c(%ebx),%eax
     8e1:	85 c0                	test   %eax,%eax
     8e3:	74 11                	je     8f6 <__do_global_dtors_aux+0x36>
     8e5:	83 ec 0c             	sub    $0xc,%esp
     8e8:	ff b3 64 00 00 00    	pushl  0x64(%ebx)
     8ee:	e8 dd fe ff ff       	call   7d0 <__ctype_b_loc@plt+0x10>
     8f3:	83 c4 10             	add    $0x10,%esp
     8f6:	e8 35 ff ff ff       	call   830 <deregister_tm_clones>
     8fb:	c6 83 60 02 00 00 01 	movb   $0x1,0x260(%ebx)
     902:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     905:	c9                   	leave
     906:	c3                   	ret
     907:	89 f6                	mov    %esi,%esi
     909:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000910 <frame_dummy>:
     910:	e8 37 00 00 00       	call   94c <__x86.get_pc_thunk.dx>
     915:	81 c2 eb 36 00 00    	add    $0x36eb,%edx
     91b:	8d 82 ec fe ff ff    	lea    -0x114(%edx),%eax
     921:	8b 08                	mov    (%eax),%ecx
     923:	85 c9                	test   %ecx,%ecx
     925:	75 09                	jne    930 <frame_dummy+0x20>
     927:	e9 44 ff ff ff       	jmp    870 <register_tm_clones>
     92c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     930:	8b 92 f8 ff ff ff    	mov    -0x8(%edx),%edx
     936:	85 d2                	test   %edx,%edx
     938:	74 ed                	je     927 <frame_dummy+0x17>
     93a:	55                   	push   %ebp
     93b:	89 e5                	mov    %esp,%ebp
     93d:	83 ec 14             	sub    $0x14,%esp
     940:	50                   	push   %eax
     941:	ff d2                	call   *%edx
     943:	83 c4 10             	add    $0x10,%esp
     946:	c9                   	leave
     947:	e9 24 ff ff ff       	jmp    870 <register_tm_clones>

0000094c <__x86.get_pc_thunk.dx>:
     94c:	8b 14 24             	mov    (%esp),%edx
     94f:	c3                   	ret

00000950 <main>:
     950:	8d 4c 24 04          	lea    0x4(%esp),%ecx
     954:	83 e4 f0             	and    $0xfffffff0,%esp
     957:	ff 71 fc             	pushl  -0x4(%ecx)
     95a:	55                   	push   %ebp
     95b:	89 e5                	mov    %esp,%ebp
     95d:	56                   	push   %esi
     95e:	53                   	push   %ebx
     95f:	51                   	push   %ecx
     960:	83 ec 1c             	sub    $0x1c,%esp
     963:	e8 b8 fe ff ff       	call   820 <__x86.get_pc_thunk.bx>
     968:	81 c3 98 36 00 00    	add    $0x3698,%ebx
     96e:	89 ce                	mov    %ecx,%esi
     970:	83 3e 01             	cmpl   $0x1,(%esi)
     973:	75 15                	jne    98a <main+0x3a>
     975:	8b 83 ec ff ff ff    	mov    -0x14(%ebx),%eax
     97b:	8b 10                	mov    (%eax),%edx
     97d:	8d 83 68 02 00 00    	lea    0x268(%ebx),%eax
     983:	89 10                	mov    %edx,(%eax)
     985:	e9 83 00 00 00       	jmp    a0d <main+0xbd>
     98a:	83 3e 02             	cmpl   $0x2,(%esi)
     98d:	75 5c                	jne    9eb <main+0x9b>
     98f:	8b 46 04             	mov    0x4(%esi),%eax
     992:	83 c0 04             	add    $0x4,%eax
     995:	8b 00                	mov    (%eax),%eax
     997:	83 ec 08             	sub    $0x8,%esp
     99a:	8d 93 28 d9 ff ff    	lea    -0x26d8(%ebx),%edx
     9a0:	52                   	push   %edx
     9a1:	50                   	push   %eax
     9a2:	e8 e9 fd ff ff       	call   790 <fopen@plt>
     9a7:	83 c4 10             	add    $0x10,%esp
     9aa:	89 c2                	mov    %eax,%edx
     9ac:	8d 83 68 02 00 00    	lea    0x268(%ebx),%eax
     9b2:	89 10                	mov    %edx,(%eax)
     9b4:	8d 83 68 02 00 00    	lea    0x268(%ebx),%eax
     9ba:	8b 00                	mov    (%eax),%eax
     9bc:	85 c0                	test   %eax,%eax
     9be:	75 4d                	jne    a0d <main+0xbd>
     9c0:	8b 46 04             	mov    0x4(%esi),%eax
     9c3:	83 c0 04             	add    $0x4,%eax
     9c6:	8b 10                	mov    (%eax),%edx
     9c8:	8b 46 04             	mov    0x4(%esi),%eax
     9cb:	8b 00                	mov    (%eax),%eax
     9cd:	83 ec 04             	sub    $0x4,%esp
     9d0:	52                   	push   %edx
     9d1:	50                   	push   %eax
     9d2:	8d 83 2a d9 ff ff    	lea    -0x26d6(%ebx),%eax
     9d8:	50                   	push   %eax
     9d9:	e8 02 fd ff ff       	call   6e0 <printf@plt>
     9de:	83 c4 10             	add    $0x10,%esp
     9e1:	83 ec 0c             	sub    $0xc,%esp
     9e4:	6a 08                	push   $0x8
     9e6:	e8 65 fd ff ff       	call   750 <exit@plt>
     9eb:	8b 46 04             	mov    0x4(%esi),%eax
     9ee:	8b 00                	mov    (%eax),%eax
     9f0:	83 ec 08             	sub    $0x8,%esp
     9f3:	50                   	push   %eax
     9f4:	8d 83 47 d9 ff ff    	lea    -0x26b9(%ebx),%eax
     9fa:	50                   	push   %eax
     9fb:	e8 e0 fc ff ff       	call   6e0 <printf@plt>
     a00:	83 c4 10             	add    $0x10,%esp
     a03:	83 ec 0c             	sub    $0xc,%esp
     a06:	6a 08                	push   $0x8
     a08:	e8 43 fd ff ff       	call   750 <exit@plt>
     a0d:	e8 1f 0b 00 00       	call   1531 <initialize_bomb>
     a12:	83 ec 0c             	sub    $0xc,%esp
     a15:	8d 83 64 d9 ff ff    	lea    -0x269c(%ebx),%eax
     a1b:	50                   	push   %eax
     a1c:	e8 1f fd ff ff       	call   740 <puts@plt>
     a21:	83 c4 10             	add    $0x10,%esp
     a24:	83 ec 0c             	sub    $0xc,%esp
     a27:	8d 83 a0 d9 ff ff    	lea    -0x2660(%ebx),%eax
     a2d:	50                   	push   %eax
     a2e:	e8 0d fd ff ff       	call   740 <puts@plt>
     a33:	83 c4 10             	add    $0x10,%esp
     a36:	e8 f0 0b 00 00       	call   162b <read_line>
     a3b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     a3e:	83 ec 0c             	sub    $0xc,%esp
     a41:	ff 75 e4             	pushl  -0x1c(%ebp)
     a44:	e8 89 01 00 00       	call   bd2 <phase_0>
     a49:	83 c4 10             	add    $0x10,%esp
     a4c:	85 c0                	test   %eax,%eax
     a4e:	74 17                	je     a67 <main+0x117>
     a50:	e8 8c 0d 00 00       	call   17e1 <phase_defused>
     a55:	83 ec 0c             	sub    $0xc,%esp
     a58:	8d 83 cc d9 ff ff    	lea    -0x2634(%ebx),%eax
     a5e:	50                   	push   %eax
     a5f:	e8 dc fc ff ff       	call   740 <puts@plt>
     a64:	83 c4 10             	add    $0x10,%esp
     a67:	e8 bf 0b 00 00       	call   162b <read_line>
     a6c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     a6f:	83 ec 0c             	sub    $0xc,%esp
     a72:	ff 75 e4             	pushl  -0x1c(%ebp)
     a75:	e8 e2 01 00 00       	call   c5c <phase_1>
     a7a:	83 c4 10             	add    $0x10,%esp
     a7d:	85 c0                	test   %eax,%eax
     a7f:	74 17                	je     a98 <main+0x148>
     a81:	e8 5b 0d 00 00       	call   17e1 <phase_defused>
     a86:	83 ec 0c             	sub    $0xc,%esp
     a89:	8d 83 f4 d9 ff ff    	lea    -0x260c(%ebx),%eax
     a8f:	50                   	push   %eax
     a90:	e8 ab fc ff ff       	call   740 <puts@plt>
     a95:	83 c4 10             	add    $0x10,%esp
     a98:	e8 8e 0b 00 00       	call   162b <read_line>
     a9d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     aa0:	83 ec 0c             	sub    $0xc,%esp
     aa3:	ff 75 e4             	pushl  -0x1c(%ebp)
     aa6:	e8 f2 01 00 00       	call   c9d <phase_2>
     aab:	83 c4 10             	add    $0x10,%esp
     aae:	85 c0                	test   %eax,%eax
     ab0:	74 17                	je     ac9 <main+0x179>
     ab2:	e8 2a 0d 00 00       	call   17e1 <phase_defused>
     ab7:	83 ec 0c             	sub    $0xc,%esp
     aba:	8d 83 1d da ff ff    	lea    -0x25e3(%ebx),%eax
     ac0:	50                   	push   %eax
     ac1:	e8 7a fc ff ff       	call   740 <puts@plt>
     ac6:	83 c4 10             	add    $0x10,%esp
     ac9:	e8 5d 0b 00 00       	call   162b <read_line>
     ace:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     ad1:	83 ec 0c             	sub    $0xc,%esp
     ad4:	ff 75 e4             	pushl  -0x1c(%ebp)
     ad7:	e8 50 02 00 00       	call   d2c <phase_3>
     adc:	83 c4 10             	add    $0x10,%esp
     adf:	85 c0                	test   %eax,%eax
     ae1:	74 17                	je     afa <main+0x1aa>
     ae3:	e8 f9 0c 00 00       	call   17e1 <phase_defused>
     ae8:	83 ec 0c             	sub    $0xc,%esp
     aeb:	8d 83 3b da ff ff    	lea    -0x25c5(%ebx),%eax
     af1:	50                   	push   %eax
     af2:	e8 49 fc ff ff       	call   740 <puts@plt>
     af7:	83 c4 10             	add    $0x10,%esp
     afa:	e8 2c 0b 00 00       	call   162b <read_line>
     aff:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     b02:	83 ec 0c             	sub    $0xc,%esp
     b05:	ff 75 e4             	pushl  -0x1c(%ebp)
     b08:	e8 8b 03 00 00       	call   e98 <phase_4>
     b0d:	83 c4 10             	add    $0x10,%esp
     b10:	85 c0                	test   %eax,%eax
     b12:	74 17                	je     b2b <main+0x1db>
     b14:	e8 c8 0c 00 00       	call   17e1 <phase_defused>
     b19:	83 ec 0c             	sub    $0xc,%esp
     b1c:	8d 83 4c da ff ff    	lea    -0x25b4(%ebx),%eax
     b22:	50                   	push   %eax
     b23:	e8 18 fc ff ff       	call   740 <puts@plt>
     b28:	83 c4 10             	add    $0x10,%esp
     b2b:	e8 fb 0a 00 00       	call   162b <read_line>
     b30:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     b33:	83 ec 0c             	sub    $0xc,%esp
     b36:	ff 75 e4             	pushl  -0x1c(%ebp)
     b39:	e8 84 04 00 00       	call   fc2 <phase_5>
     b3e:	83 c4 10             	add    $0x10,%esp
     b41:	85 c0                	test   %eax,%eax
     b43:	74 17                	je     b5c <main+0x20c>
     b45:	e8 97 0c 00 00       	call   17e1 <phase_defused>
     b4a:	83 ec 0c             	sub    $0xc,%esp
     b4d:	8d 83 70 da ff ff    	lea    -0x2590(%ebx),%eax
     b53:	50                   	push   %eax
     b54:	e8 e7 fb ff ff       	call   740 <puts@plt>
     b59:	83 c4 10             	add    $0x10,%esp
     b5c:	e8 ca 0a 00 00       	call   162b <read_line>
     b61:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     b64:	83 ec 0c             	sub    $0xc,%esp
     b67:	ff 75 e4             	pushl  -0x1c(%ebp)
     b6a:	e8 d9 04 00 00       	call   1048 <phase_6>
     b6f:	83 c4 10             	add    $0x10,%esp
     b72:	85 c0                	test   %eax,%eax
     b74:	74 05                	je     b7b <main+0x22b>
     b76:	e8 66 0c 00 00       	call   17e1 <phase_defused>
     b7b:	b8 00 00 00 00       	mov    $0x0,%eax
     b80:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b83:	59                   	pop    %ecx
     b84:	5b                   	pop    %ebx
     b85:	5e                   	pop    %esi
     b86:	5d                   	pop    %ebp
     b87:	8d 61 fc             	lea    -0x4(%ecx),%esp
     b8a:	c3                   	ret

00000b8b <UVIXtwGT>:
     b8b:	55                   	push   %ebp
     b8c:	89 e5                	mov    %esp,%ebp
     b8e:	83 ec 08             	sub    $0x8,%esp
     b91:	e8 29 07 00 00       	call   12bf <__x86.get_pc_thunk.ax>
     b96:	05 6a 34 00 00       	add    $0x346a,%eax
     b9b:	8b 45 08             	mov    0x8(%ebp),%eax
     b9e:	0f af 45 0c          	imul   0xc(%ebp),%eax
     ba2:	89 c2                	mov    %eax,%edx
     ba4:	d9 45 10             	flds   0x10(%ebp)
     ba7:	d9 7d fe             	fnstcw -0x2(%ebp)
     baa:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
     bae:	b4 0c                	mov    $0xc,%ah
     bb0:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
     bb4:	d9 6d fc             	fldcw  -0x4(%ebp)
     bb7:	db 5d f8             	fistpl -0x8(%ebp)
     bba:	d9 6d fe             	fldcw  -0x2(%ebp)
     bbd:	8b 4d f8             	mov    -0x8(%ebp),%ecx
     bc0:	89 c8                	mov    %ecx,%eax
     bc2:	01 c0                	add    %eax,%eax
     bc4:	01 c8                	add    %ecx,%eax
     bc6:	01 c2                	add    %eax,%edx
     bc8:	8b 45 08             	mov    0x8(%ebp),%eax
     bcb:	c1 f8 03             	sar    $0x3,%eax
     bce:	01 d0                	add    %edx,%eax
     bd0:	c9                   	leave
     bd1:	c3                   	ret

00000bd2 <phase_0>:78 4 -114 56

     bd2:	55                   	push   %ebp
     bd3:	89 e5                	mov    %esp,%ebp
     bd5:	53                   	push   %ebx
     bd6:	83 ec 24             	sub    $0x24,%esp
     bd9:	e8 42 fc ff ff       	call   820 <__x86.get_pc_thunk.bx>
     bde:	81 c3 22 34 00 00    	add    $0x3422,%ebx
     be4:	c7 45 ec ea 8d 23 21 	movl   $0x21238dea,-0x14(%ebp)
     beb:	db 45 ec             	fildl  -0x14(%ebp)
     bee:	d9 5d e8             	fstps  -0x18(%ebp)
     bf1:	8d 45 e8             	lea    -0x18(%ebp),%eax
     bf4:	83 c0 03             	add    $0x3,%eax
     bf7:	89 45 f4             	mov    %eax,-0xc(%ebp)
     bfa:	83 ec 04             	sub    $0x4,%esp
     bfd:	6a 04                	push   $0x4
     bff:	8d 45 d8             	lea    -0x28(%ebp),%eax
     c02:	50                   	push   %eax
     c03:	ff 75 08             	pushl  0x8(%ebp)
     c06:	e8 d8 07 00 00       	call   13e3 <read_n_numbers>
     c0b:	83 c4 10             	add    $0x10,%esp
     c0e:	85 c0                	test   %eax,%eax
     c10:	75 07                	jne    c19 <phase_0+0x47>
     c12:	b8 00 00 00 00       	mov    $0x0,%eax
     c17:	eb 3e                	jmp    c57 <phase_0+0x85>
     c19:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
     c20:	eb 28                	jmp    c4a <phase_0+0x78>
     c22:	8b 45 f0             	mov    -0x10(%ebp),%eax
     c25:	8b 54 85 d8          	mov    -0x28(%ebp,%eax,4),%edx
     c29:	8b 45 f4             	mov    -0xc(%ebp),%eax
     c2c:	0f b6 00             	movzbl (%eax),%eax
     c2f:	0f be c0             	movsbl %al,%eax
     c32:	39 c2                	cmp    %eax,%edx
     c34:	74 0c                	je     c42 <phase_0+0x70>
     c36:	e8 6a 0b 00 00       	call   17a5 <explode_bomb>
     c3b:	b8 00 00 00 00       	mov    $0x0,%eax
     c40:	eb 15                	jmp    c57 <phase_0+0x85>
     c42:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
     c46:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
     c4a:	8b 45 f0             	mov    -0x10(%ebp),%eax
     c4d:	83 f8 03             	cmp    $0x3,%eax
     c50:	76 d0                	jbe    c22 <phase_0+0x50>
     c52:	b8 01 00 00 00       	mov    $0x1,%eax
     c57:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c5a:	c9                   	leave
     c5b:	c3                   	ret

00000c5c <phase_1>:The basic unit of computer storage is the bit.
     c5c:	55                   	push   %ebp
     c5d:	89 e5                	mov    %esp,%ebp
     c5f:	53                   	push   %ebx
     c60:	83 ec 04             	sub    $0x4,%esp
     c63:	e8 b8 fb ff ff       	call   820 <__x86.get_pc_thunk.bx>
     c68:	81 c3 98 33 00 00    	add    $0x3398,%ebx
     c6e:	83 ec 08             	sub    $0x8,%esp
     c71:	8d 83 e4 da ff ff    	lea    -0x251c(%ebx),%eax
     c77:	50                   	push   %eax
     c78:	ff 75 08             	pushl  0x8(%ebp)
     c7b:	e8 3c 08 00 00       	call   14bc <strings_not_equal>
     c80:	83 c4 10             	add    $0x10,%esp
     c83:	85 c0                	test   %eax,%eax
     c85:	74 0c                	je     c93 <phase_1+0x37>
     c87:	e8 19 0b 00 00       	call   17a5 <explode_bomb>
     c8c:	b8 00 00 00 00       	mov    $0x0,%eax
     c91:	eb 05                	jmp    c98 <phase_1+0x3c>
     c93:	b8 01 00 00 00       	mov    $0x1,%eax
     c98:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c9b:	c9                   	leave
     c9c:	c3                   	ret

00000c9d <phase_2>:
     c9d:	55                   	push   %ebp
     c9e:	89 e5                	mov    %esp,%ebp
     ca0:	53                   	push   %ebx
     ca1:	83 ec 24             	sub    $0x24,%esp
     ca4:	e8 77 fb ff ff       	call   820 <__x86.get_pc_thunk.bx>
     ca9:	81 c3 57 33 00 00    	add    $0x3357,%ebx
     caf:	83 ec 04             	sub    $0x4,%esp
     cb2:	6a 06                	push   $0x6
     cb4:	8d 45 dc             	lea    -0x24(%ebp),%eax
     cb7:	50                   	push   %eax
     cb8:	ff 75 08             	pushl  0x8(%ebp)
     cbb:	e8 23 07 00 00       	call   13e3 <read_n_numbers>
     cc0:	83 c4 10             	add    $0x10,%esp
     cc3:	85 c0                	test   %eax,%eax
     cc5:	75 07                	jne    cce <phase_2+0x31>
     cc7:	b8 00 00 00 00       	mov    $0x0,%eax
     ccc:	eb 59                	jmp    d27 <phase_2+0x8a>
     cce:	8b 45 dc             	mov    -0x24(%ebp),%eax
     cd1:	3d dd 00 00 00       	cmp    $0xdd,%eax
     cd6:	74 0c                	je     ce4 <phase_2+0x47>
     cd8:	e8 c8 0a 00 00       	call   17a5 <explode_bomb>
     cdd:	b8 00 00 00 00       	mov    $0x0,%eax
     ce2:	eb 43                	jmp    d27 <phase_2+0x8a>
     ce4:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
     ceb:	eb 2f                	jmp    d1c <phase_2+0x7f>
     ced:	8b 45 f4             	mov    -0xc(%ebp),%eax
     cf0:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
     cf4:	8b 55 f4             	mov    -0xc(%ebp),%edx
     cf7:	83 ea 01             	sub    $0x1,%edx
     cfa:	8b 54 95 dc          	mov    -0x24(%ebp,%edx,4),%edx
     cfe:	8b 4d f4             	mov    -0xc(%ebp),%ecx
     d01:	01 c9                	add    %ecx,%ecx
     d03:	29 ca                	sub    %ecx,%edx
     d05:	83 c2 01             	add    $0x1,%edx
     d08:	39 d0                	cmp    %edx,%eax
     d0a:	74 0c                	je     d18 <phase_2+0x7b>
     d0c:	e8 94 0a 00 00       	call   17a5 <explode_bomb>
     d11:	b8 00 00 00 00       	mov    $0x0,%eax
     d16:	eb 0f                	jmp    d27 <phase_2+0x8a>
     d18:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
     d1c:	83 7d f4 05          	cmpl   $0x5,-0xc(%ebp)
     d20:	7e cb                	jle    ced <phase_2+0x50>
     d22:	b8 01 00 00 00       	mov    $0x1,%eax
     d27:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     d2a:	c9                   	leave
     d2b:	c3                   	ret

00000d2c <phase_3>:
     d2c:	55                   	push   %ebp
     d2d:	89 e5                	mov    %esp,%ebp
     d2f:	53                   	push   %ebx
     d30:	83 ec 14             	sub    $0x14,%esp
     d33:	e8 e8 fa ff ff       	call   820 <__x86.get_pc_thunk.bx>
     d38:	81 c3 c8 32 00 00    	add    $0x32c8,%ebx
     d3e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
     d45:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
     d4c:	8d 45 e8             	lea    -0x18(%ebp),%eax
     d4f:	50                   	push   %eax
     d50:	8d 45 ec             	lea    -0x14(%ebp),%eax
     d53:	50                   	push   %eax
     d54:	8d 83 13 db ff ff    	lea    -0x24ed(%ebx),%eax
     d5a:	50                   	push   %eax
     d5b:	ff 75 08             	pushl  0x8(%ebp)
     d5e:	e8 1d fa ff ff       	call   780 <__isoc99_sscanf@plt>
     d63:	83 c4 10             	add    $0x10,%esp
     d66:	89 45 f0             	mov    %eax,-0x10(%ebp)
     d69:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp)
     d6d:	7f 0f                	jg     d7e <phase_3+0x52>
     d6f:	e8 31 0a 00 00       	call   17a5 <explode_bomb>
     d74:	b8 00 00 00 00       	mov    $0x0,%eax
     d79:	e9 98 00 00 00       	jmp    e16 <.L35+0x2e>
     d7e:	8b 45 ec             	mov    -0x14(%ebp),%eax
     d81:	83 c0 80             	add    $0xffffff80,%eax
     d84:	83 f8 09             	cmp    $0x9,%eax
     d87:	77 68                	ja     df1 <.L35+0x9>
     d89:	c1 e0 02             	shl    $0x2,%eax
     d8c:	8b 84 18 1c db ff ff 	mov    -0x24e4(%eax,%ebx,1),%eax
     d93:	01 d8                	add    %ebx,%eax
     d95:	ff e0                	jmp    *%eax

00000d97 <.L25>:
     d97:	c7 45 f4 ca 01 00 00 	movl   $0x1ca,-0xc(%ebp)
     d9e:	eb 5d                	jmp    dfd <.L35+0x15>

00000da0 <.L27>:
     da0:	c7 45 f4 ca 01 00 00 	movl   $0x1ca,-0xc(%ebp)
     da7:	eb 54                	jmp    dfd <.L35+0x15>

00000da9 <.L28>:
     da9:	c7 45 f4 53 00 00 00 	movl   $0x53,-0xc(%ebp)
     db0:	eb 4b                	jmp    dfd <.L35+0x15>

00000db2 <.L29>:
     db2:	c7 45 f4 ca 01 00 00 	movl   $0x1ca,-0xc(%ebp)
     db9:	eb 42                	jmp    dfd <.L35+0x15>

00000dbb <.L30>:
     dbb:	c7 45 f4 53 00 00 00 	movl   $0x53,-0xc(%ebp)
     dc2:	eb 39                	jmp    dfd <.L35+0x15>

00000dc4 <.L31>:
     dc4:	c7 45 f4 ca 01 00 00 	movl   $0x1ca,-0xc(%ebp)
     dcb:	eb 30                	jmp    dfd <.L35+0x15>

00000dcd <.L32>:
     dcd:	c7 45 f4 53 00 00 00 	movl   $0x53,-0xc(%ebp)
     dd4:	eb 27                	jmp    dfd <.L35+0x15>

00000dd6 <.L33>:
     dd6:	c7 45 f4 53 00 00 00 	movl   $0x53,-0xc(%ebp)
     ddd:	eb 1e                	jmp    dfd <.L35+0x15>

00000ddf <.L34>:
     ddf:	c7 45 f4 ca 01 00 00 	movl   $0x1ca,-0xc(%ebp)
     de6:	eb 15                	jmp    dfd <.L35+0x15>

00000de8 <.L35>:
     de8:	c7 45 f4 53 00 00 00 	movl   $0x53,-0xc(%ebp)
     def:	eb 0c                	jmp    dfd <.L35+0x15>
     df1:	e8 af 09 00 00       	call   17a5 <explode_bomb>
     df6:	b8 00 00 00 00       	mov    $0x0,%eax
     dfb:	eb 19                	jmp    e16 <.L35+0x2e>
     dfd:	8b 45 e8             	mov    -0x18(%ebp),%eax
     e00:	39 45 f4             	cmp    %eax,-0xc(%ebp)
     e03:	74 0c                	je     e11 <.L35+0x29>
     e05:	e8 9b 09 00 00       	call   17a5 <explode_bomb>
     e0a:	b8 00 00 00 00       	mov    $0x0,%eax
     e0f:	eb 05                	jmp    e16 <.L35+0x2e>
     e11:	b8 01 00 00 00       	mov    $0x1,%eax
     e16:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     e19:	c9                   	leave
     e1a:	c3                   	ret

00000e1b <func4>:
     e1b:	55                   	push   %ebp
     e1c:	89 e5                	mov    %esp,%ebp
     e1e:	83 ec 18             	sub    $0x18,%esp
     e21:	e8 99 04 00 00       	call   12bf <__x86.get_pc_thunk.ax>
     e26:	05 da 31 00 00       	add    $0x31da,%eax
     e2b:	8b 55 0c             	mov    0xc(%ebp),%edx
     e2e:	8b 45 10             	mov    0x10(%ebp),%eax
     e31:	01 d0                	add    %edx,%eax
     e33:	89 c2                	mov    %eax,%edx
     e35:	c1 ea 1f             	shr    $0x1f,%edx
     e38:	01 d0                	add    %edx,%eax
     e3a:	d1 f8                	sar    %eax
     e3c:	89 45 f4             	mov    %eax,-0xc(%ebp)
     e3f:	8b 45 0c             	mov    0xc(%ebp),%eax
     e42:	3b 45 10             	cmp    0x10(%ebp),%eax
     e45:	7c 13                	jl     e5a <func4+0x3f>
     e47:	8b 45 10             	mov    0x10(%ebp),%eax
     e4a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
     e51:	8b 45 08             	mov    0x8(%ebp),%eax
     e54:	01 d0                	add    %edx,%eax
     e56:	8b 00                	mov    (%eax),%eax
     e58:	eb 3c                	jmp    e96 <func4+0x7b>
     e5a:	83 ec 04             	sub    $0x4,%esp
     e5d:	ff 75 f4             	pushl  -0xc(%ebp)
     e60:	ff 75 0c             	pushl  0xc(%ebp)
     e63:	ff 75 08             	pushl  0x8(%ebp)
     e66:	e8 b0 ff ff ff       	call   e1b <func4>
     e6b:	83 c4 10             	add    $0x10,%esp
     e6e:	89 45 f0             	mov    %eax,-0x10(%ebp)
     e71:	8b 45 f4             	mov    -0xc(%ebp),%eax
     e74:	83 c0 01             	add    $0x1,%eax
     e77:	83 ec 04             	sub    $0x4,%esp
     e7a:	ff 75 10             	pushl  0x10(%ebp)
     e7d:	50                   	push   %eax
     e7e:	ff 75 08             	pushl  0x8(%ebp)
     e81:	e8 95 ff ff ff       	call   e1b <func4>
     e86:	83 c4 10             	add    $0x10,%esp
     e89:	89 45 ec             	mov    %eax,-0x14(%ebp)
     e8c:	8b 45 ec             	mov    -0x14(%ebp),%eax
     e8f:	39 45 f0             	cmp    %eax,-0x10(%ebp)
     e92:	0f 4d 45 f0          	cmovge -0x10(%ebp),%eax
     e96:	c9                   	leave
     e97:	c3                   	ret

00000e98 <phase_4>:
     e98:	55                   	push   %ebp
     e99:	89 e5                	mov    %esp,%ebp
     e9b:	57                   	push   %edi
     e9c:	56                   	push   %esi
     e9d:	53                   	push   %ebx
     e9e:	81 ec ac 00 00 00    	sub    $0xac,%esp
     ea4:	e8 77 f9 ff ff       	call   820 <__x86.get_pc_thunk.bx>
     ea9:	81 c3 57 31 00 00    	add    $0x3157,%ebx
     eaf:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
     eb5:	8d 93 60 db ff ff    	lea    -0x24a0(%ebx),%edx
     ebb:	b9 22 00 00 00       	mov    $0x22,%ecx
     ec0:	89 c7                	mov    %eax,%edi
     ec2:	89 d6                	mov    %edx,%esi
     ec4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
     ec6:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
     ecc:	50                   	push   %eax
     ecd:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
     ed3:	50                   	push   %eax
     ed4:	8d 83 13 db ff ff    	lea    -0x24ed(%ebx),%eax
     eda:	50                   	push   %eax
     edb:	ff 75 08             	pushl  0x8(%ebp)
     ede:	e8 9d f8 ff ff       	call   780 <__isoc99_sscanf@plt>
     ee3:	83 c4 10             	add    $0x10,%esp
     ee6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     ee9:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
     eed:	74 0f                	je     efe <phase_4+0x66>
     eef:	e8 b1 08 00 00       	call   17a5 <explode_bomb>
     ef4:	b8 00 00 00 00       	mov    $0x0,%eax
     ef9:	e9 bc 00 00 00       	jmp    fba <phase_4+0x122>
     efe:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
     f04:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
     f0a:	83 ec 04             	sub    $0x4,%esp
     f0d:	52                   	push   %edx
     f0e:	50                   	push   %eax
     f0f:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
     f15:	50                   	push   %eax
     f16:	e8 00 ff ff ff       	call   e1b <func4>
     f1b:	83 c4 10             	add    $0x10,%esp
     f1e:	3d 77 01 00 00       	cmp    $0x177,%eax
     f23:	74 0f                	je     f34 <phase_4+0x9c>
     f25:	e8 7b 08 00 00       	call   17a5 <explode_bomb>
     f2a:	b8 00 00 00 00       	mov    $0x0,%eax
     f2f:	e9 86 00 00 00       	jmp    fba <phase_4+0x122>
     f34:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
     f3a:	85 c0                	test   %eax,%eax
     f3c:	7e 36                	jle    f74 <phase_4+0xdc>
     f3e:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
     f44:	8b 95 58 ff ff ff    	mov    -0xa8(%ebp),%edx
     f4a:	83 ea 01             	sub    $0x1,%edx
     f4d:	83 ec 04             	sub    $0x4,%esp
     f50:	50                   	push   %eax
     f51:	52                   	push   %edx
     f52:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
     f58:	50                   	push   %eax
     f59:	e8 bd fe ff ff       	call   e1b <func4>
     f5e:	83 c4 10             	add    $0x10,%esp
     f61:	3d 77 01 00 00       	cmp    $0x177,%eax
     f66:	75 0c                	jne    f74 <phase_4+0xdc>
     f68:	e8 38 08 00 00       	call   17a5 <explode_bomb>
     f6d:	b8 00 00 00 00       	mov    $0x0,%eax
     f72:	eb 46                	jmp    fba <phase_4+0x122>
     f74:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
     f7a:	83 f8 20             	cmp    $0x20,%eax
     f7d:	7f 36                	jg     fb5 <phase_4+0x11d>
     f7f:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
     f85:	8d 50 01             	lea    0x1(%eax),%edx
     f88:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
     f8e:	83 ec 04             	sub    $0x4,%esp
     f91:	52                   	push   %edx
     f92:	50                   	push   %eax
     f93:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
     f99:	50                   	push   %eax
     f9a:	e8 7c fe ff ff       	call   e1b <func4>
     f9f:	83 c4 10             	add    $0x10,%esp
     fa2:	3d 77 01 00 00       	cmp    $0x177,%eax
     fa7:	75 0c                	jne    fb5 <phase_4+0x11d>
     fa9:	e8 f7 07 00 00       	call   17a5 <explode_bomb>
     fae:	b8 00 00 00 00       	mov    $0x0,%eax
     fb3:	eb 05                	jmp    fba <phase_4+0x122>
     fb5:	b8 01 00 00 00       	mov    $0x1,%eax
     fba:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fbd:	5b                   	pop    %ebx
     fbe:	5e                   	pop    %esi
     fbf:	5f                   	pop    %edi
     fc0:	5d                   	pop    %ebp
     fc1:	c3                   	ret

00000fc2 <phase_5>:
     fc2:	55                   	push   %ebp
     fc3:	89 e5                	mov    %esp,%ebp
     fc5:	53                   	push   %ebx
     fc6:	83 ec 14             	sub    $0x14,%esp
     fc9:	e8 52 f8 ff ff       	call   820 <__x86.get_pc_thunk.bx>
     fce:	81 c3 32 30 00 00    	add    $0x3032,%ebx
     fd4:	83 ec 0c             	sub    $0xc,%esp
     fd7:	ff 75 08             	pushl  0x8(%ebp)
     fda:	e8 a7 04 00 00       	call   1486 <string_length>
     fdf:	83 c4 10             	add    $0x10,%esp
     fe2:	89 45 ec             	mov    %eax,-0x14(%ebp)
     fe5:	83 7d ec 06          	cmpl   $0x6,-0x14(%ebp)
     fe9:	74 0c                	je     ff7 <phase_5+0x35>
     feb:	e8 b5 07 00 00       	call   17a5 <explode_bomb>
     ff0:	b8 00 00 00 00       	mov    $0x0,%eax
     ff5:	eb 4c                	jmp    1043 <phase_5+0x81>
     ff7:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
     ffe:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    1005:	eb 1f                	jmp    1026 <phase_5+0x64>
    1007:	8b 55 f4             	mov    -0xc(%ebp),%edx
    100a:	8b 45 08             	mov    0x8(%ebp),%eax
    100d:	01 d0                	add    %edx,%eax
    100f:	0f b6 00             	movzbl (%eax),%eax
    1012:	0f be c0             	movsbl %al,%eax
    1015:	83 e0 0f             	and    $0xf,%eax
    1018:	8b 84 83 80 01 00 00 	mov    0x180(%ebx,%eax,4),%eax
    101f:	01 45 f0             	add    %eax,-0x10(%ebp)
    1022:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    1026:	83 7d f4 05          	cmpl   $0x5,-0xc(%ebp)
    102a:	7e db                	jle    1007 <phase_5+0x45>
    102c:	83 7d f0 2c          	cmpl   $0x2c,-0x10(%ebp)
    1030:	74 0c                	je     103e <phase_5+0x7c>
    1032:	e8 6e 07 00 00       	call   17a5 <explode_bomb>
    1037:	b8 00 00 00 00       	mov    $0x0,%eax
    103c:	eb 05                	jmp    1043 <phase_5+0x81>
    103e:	b8 01 00 00 00       	mov    $0x1,%eax
    1043:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1046:	c9                   	leave
    1047:	c3                   	ret

00001048 <phase_6>:
    1048:	55                   	push   %ebp
    1049:	89 e5                	mov    %esp,%ebp
    104b:	53                   	push   %ebx
    104c:	83 ec 54             	sub    $0x54,%esp
    104f:	e8 cc f7 ff ff       	call   820 <__x86.get_pc_thunk.bx>
    1054:	81 c3 ac 2f 00 00    	add    $0x2fac,%ebx
    105a:	8d 83 fc 01 00 00    	lea    0x1fc(%ebx),%eax
    1060:	89 45 e8             	mov    %eax,-0x18(%ebp)
    1063:	83 ec 04             	sub    $0x4,%esp
    1066:	6a 07                	push   $0x7
    1068:	8d 45 cc             	lea    -0x34(%ebp),%eax
    106b:	50                   	push   %eax
    106c:	ff 75 08             	pushl  0x8(%ebp)
    106f:	e8 6f 03 00 00       	call   13e3 <read_n_numbers>
    1074:	83 c4 10             	add    $0x10,%esp
    1077:	85 c0                	test   %eax,%eax
    1079:	75 0a                	jne    1085 <phase_6+0x3d>
    107b:	b8 00 00 00 00       	mov    $0x0,%eax
    1080:	e9 37 01 00 00       	jmp    11bc <phase_6+0x174>
    1085:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    108c:	eb 60                	jmp    10ee <phase_6+0xa6>
    108e:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1091:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax
    1095:	85 c0                	test   %eax,%eax
    1097:	7e 0c                	jle    10a5 <phase_6+0x5d>
    1099:	8b 45 f0             	mov    -0x10(%ebp),%eax
    109c:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax
    10a0:	83 f8 07             	cmp    $0x7,%eax
    10a3:	7e 0f                	jle    10b4 <phase_6+0x6c>
    10a5:	e8 fb 06 00 00       	call   17a5 <explode_bomb>
    10aa:	b8 00 00 00 00       	mov    $0x0,%eax
    10af:	e9 08 01 00 00       	jmp    11bc <phase_6+0x174>
    10b4:	8b 45 f0             	mov    -0x10(%ebp),%eax
    10b7:	83 c0 01             	add    $0x1,%eax
    10ba:	89 45 ec             	mov    %eax,-0x14(%ebp)
    10bd:	eb 25                	jmp    10e4 <phase_6+0x9c>
    10bf:	8b 45 f0             	mov    -0x10(%ebp),%eax
    10c2:	8b 54 85 cc          	mov    -0x34(%ebp,%eax,4),%edx
    10c6:	8b 45 ec             	mov    -0x14(%ebp),%eax
    10c9:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax
    10cd:	39 c2                	cmp    %eax,%edx
    10cf:	75 0f                	jne    10e0 <phase_6+0x98>
    10d1:	e8 cf 06 00 00       	call   17a5 <explode_bomb>
    10d6:	b8 00 00 00 00       	mov    $0x0,%eax
    10db:	e9 dc 00 00 00       	jmp    11bc <phase_6+0x174>
    10e0:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    10e4:	83 7d ec 06          	cmpl   $0x6,-0x14(%ebp)
    10e8:	7e d5                	jle    10bf <phase_6+0x77>
    10ea:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    10ee:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp)
    10f2:	7e 9a                	jle    108e <phase_6+0x46>
    10f4:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    ---------------------------------------------------------7个数字各不相等
    10fb:	eb 36                	jmp    1133 <phase_6+0xeb>
    10fd:	8b 45 e8             	mov    -0x18(%ebp),%eax
    1100:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1103:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
    110a:	eb 0d                	jmp    1119 <phase_6+0xd1>
    110c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    110f:	8b 40 08             	mov    0x8(%eax),%eax
    1112:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1115:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    1119:	8b 45 f0             	mov    -0x10(%ebp),%eax
    111c:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax
    1120:	3b 45 ec             	cmp    -0x14(%ebp),%eax
    1123:	7f e7                	jg     110c <phase_6+0xc4>
    1125:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1128:	8b 55 f4             	mov    -0xc(%ebp),%edx
    112b:	89 54 85 b0          	mov    %edx,-0x50(%ebp,%eax,4)
    112f:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    1133:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp)
    1137:	7e c4                	jle    10fd <phase_6+0xb5>

    -------------------------------复制链表-----------------------
    1139:	8b 45 b0             	mov    -0x50(%ebp),%eax
    113c:	89 45 e8             	mov    %eax,-0x18(%ebp)
    113f:	8b 45 e8             	mov    -0x18(%ebp),%eax
    1142:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1145:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    114c:	eb 1a                	jmp    1168 <phase_6+0x120>
    114e:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1151:	8b 54 85 b0          	mov    -0x50(%ebp,%eax,4),%edx
    1155:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1158:	89 50 08             	mov    %edx,0x8(%eax)
    115b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    115e:	8b 40 08             	mov    0x8(%eax),%eax
    1161:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1164:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    1168:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp)
    116c:	7e e0                	jle    114e <phase_6+0x106>

    =============================================================
    116e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1171:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
    1178:	8b 45 e8             	mov    -0x18(%ebp),%eax
    117b:	89 45 f4             	mov    %eax,-0xc(%ebp)
    117e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    1185:	eb 2a                	jmp    11b1 <phase_6+0x169>
    1187:	8b 45 f4             	mov    -0xc(%ebp),%eax
    118a:	8b 10                	mov    (%eax),%edx
    118c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    118f:	8b 40 08             	mov    0x8(%eax),%eax
    1192:	8b 00                	mov    (%eax),%eax
    1194:	39 c2                	cmp    %eax,%edx
    1196:	7e 0c                	jle    11a4 <phase_6+0x15c>
    1198:	e8 08 06 00 00       	call   17a5 <explode_bomb>
    119d:	b8 00 00 00 00       	mov    $0x0,%eax
    11a2:	eb 18                	jmp    11bc <phase_6+0x174>
    11a4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    11a7:	8b 40 08             	mov    0x8(%eax),%eax
    11aa:	89 45 f4             	mov    %eax,-0xc(%ebp)
    11ad:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    11b1:	83 7d f0 05          	cmpl   $0x5,-0x10(%ebp)
    11b5:	7e d0                	jle    1187 <phase_6+0x13f>
    11b7:	b8 01 00 00 00       	mov    $0x1,%eax
    11bc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    11bf:	c9                   	leave
    11c0:	c3                   	ret

000011c1 <fun7>:
    11c1:	55                   	push   %ebp
    11c2:	89 e5                	mov    %esp,%ebp
    11c4:	83 ec 08             	sub    $0x8,%esp
    11c7:	e8 f3 00 00 00       	call   12bf <__x86.get_pc_thunk.ax>
    11cc:	05 34 2e 00 00       	add    $0x2e34,%eax
    11d1:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    11d5:	75 07                	jne    11de <fun7+0x1d>
    11d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    11dc:	eb 4e                	jmp    122c <fun7+0x6b>
    11de:	8b 45 08             	mov    0x8(%ebp),%eax
    11e1:	8b 00                	mov    (%eax),%eax
    11e3:	3b 45 0c             	cmp    0xc(%ebp),%eax
    11e6:	7e 19                	jle    1201 <fun7+0x40>
    11e8:	8b 45 08             	mov    0x8(%ebp),%eax
    11eb:	8b 40 04             	mov    0x4(%eax),%eax
    11ee:	83 ec 08             	sub    $0x8,%esp
    11f1:	ff 75 0c             	pushl  0xc(%ebp)
    11f4:	50                   	push   %eax
    11f5:	e8 c7 ff ff ff       	call   11c1 <fun7>
    11fa:	83 c4 10             	add    $0x10,%esp
    11fd:	01 c0                	add    %eax,%eax
    11ff:	eb 2b                	jmp    122c <fun7+0x6b>
    1201:	8b 45 08             	mov    0x8(%ebp),%eax
    1204:	8b 00                	mov    (%eax),%eax
    1206:	3b 45 0c             	cmp    0xc(%ebp),%eax
    1209:	75 07                	jne    1212 <fun7+0x51>
    120b:	b8 00 00 00 00       	mov    $0x0,%eax
    1210:	eb 1a                	jmp    122c <fun7+0x6b>
    1212:	8b 45 08             	mov    0x8(%ebp),%eax
    1215:	8b 40 08             	mov    0x8(%eax),%eax
    1218:	83 ec 08             	sub    $0x8,%esp
    121b:	ff 75 0c             	pushl  0xc(%ebp)
    121e:	50                   	push   %eax
    121f:	e8 9d ff ff ff       	call   11c1 <fun7>
    1224:	83 c4 10             	add    $0x10,%esp
    1227:	01 c0                	add    %eax,%eax
    1229:	83 c0 01             	add    $0x1,%eax
    122c:	c9                   	leave
    122d:	c3                   	ret

0000122e <secret_phase>:
    122e:	55                   	push   %ebp
    122f:	89 e5                	mov    %esp,%ebp
    1231:	53                   	push   %ebx
    1232:	83 ec 14             	sub    $0x14,%esp
    1235:	e8 e6 f5 ff ff       	call   820 <__x86.get_pc_thunk.bx>
    123a:	81 c3 c6 2d 00 00    	add    $0x2dc6,%ebx
    1240:	e8 e6 03 00 00       	call   162b <read_line>
    1245:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1248:	83 ec 0c             	sub    $0xc,%esp
    124b:	ff 75 f4             	pushl  -0xc(%ebp)
    124e:	e8 5d f5 ff ff       	call   7b0 <atoi@plt>
    1253:	83 c4 10             	add    $0x10,%esp
    1256:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1259:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    125d:	7e 09                	jle    1268 <secret_phase+0x3a>
    125f:	81 7d f0 e9 03 00 00 	cmpl   $0x3e9,-0x10(%ebp)
    1266:	7e 0c                	jle    1274 <secret_phase+0x46>
    1268:	e8 38 05 00 00       	call   17a5 <explode_bomb>
    126d:	b8 00 00 00 00       	mov    $0x0,%eax
    1272:	eb 46                	jmp    12ba <secret_phase+0x8c>
    1274:	83 ec 08             	sub    $0x8,%esp
    1277:	ff 75 f0             	pushl  -0x10(%ebp)
    127a:	8d 83 50 02 00 00    	lea    0x250(%ebx),%eax
    1280:	50                   	push   %eax
    1281:	e8 3b ff ff ff       	call   11c1 <fun7>
    1286:	83 c4 10             	add    $0x10,%esp
    1289:	89 45 ec             	mov    %eax,-0x14(%ebp)
    128c:	83 7d ec 06          	cmpl   $0x6,-0x14(%ebp)
    1290:	74 0c                	je     129e <secret_phase+0x70>
    1292:	e8 0e 05 00 00       	call   17a5 <explode_bomb>
    1297:	b8 00 00 00 00       	mov    $0x0,%eax
    129c:	eb 1c                	jmp    12ba <secret_phase+0x8c>
    129e:	83 ec 0c             	sub    $0xc,%esp
    12a1:	8d 83 e8 db ff ff    	lea    -0x2418(%ebx),%eax
    12a7:	50                   	push   %eax
    12a8:	e8 93 f4 ff ff       	call   740 <puts@plt>
    12ad:	83 c4 10             	add    $0x10,%esp
    12b0:	e8 2c 05 00 00       	call   17e1 <phase_defused>
    12b5:	b8 01 00 00 00       	mov    $0x1,%eax
    12ba:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    12bd:	c9                   	leave
    12be:	c3                   	ret

000012bf <__x86.get_pc_thunk.ax>:
    12bf:	8b 04 24             	mov    (%esp),%eax
    12c2:	c3                   	ret

000012c3 <sig_handler>:
    12c3:	55                   	push   %ebp
    12c4:	89 e5                	mov    %esp,%ebp
    12c6:	53                   	push   %ebx
    12c7:	83 ec 04             	sub    $0x4,%esp
    12ca:	e8 51 f5 ff ff       	call   820 <__x86.get_pc_thunk.bx>
    12cf:	81 c3 31 2d 00 00    	add    $0x2d31,%ebx
    12d5:	83 ec 0c             	sub    $0xc,%esp
    12d8:	8d 83 10 dc ff ff    	lea    -0x23f0(%ebx),%eax
    12de:	50                   	push   %eax
    12df:	e8 5c f4 ff ff       	call   740 <puts@plt>
    12e4:	83 c4 10             	add    $0x10,%esp
    12e7:	83 ec 0c             	sub    $0xc,%esp
    12ea:	6a 03                	push   $0x3
    12ec:	e8 2f f4 ff ff       	call   720 <sleep@plt>
    12f1:	83 c4 10             	add    $0x10,%esp
    12f4:	83 ec 0c             	sub    $0xc,%esp
    12f7:	8d 83 48 dc ff ff    	lea    -0x23b8(%ebx),%eax
    12fd:	50                   	push   %eax
    12fe:	e8 dd f3 ff ff       	call   6e0 <printf@plt>
    1303:	83 c4 10             	add    $0x10,%esp
    1306:	8b 83 f0 ff ff ff    	mov    -0x10(%ebx),%eax
    130c:	8b 00                	mov    (%eax),%eax
    130e:	83 ec 0c             	sub    $0xc,%esp
    1311:	50                   	push   %eax
    1312:	e8 d9 f3 ff ff       	call   6f0 <fflush@plt>
    1317:	83 c4 10             	add    $0x10,%esp
    131a:	83 ec 0c             	sub    $0xc,%esp
    131d:	6a 01                	push   $0x1
    131f:	e8 fc f3 ff ff       	call   720 <sleep@plt>
    1324:	83 c4 10             	add    $0x10,%esp
    1327:	83 ec 0c             	sub    $0xc,%esp
    132a:	8d 83 50 dc ff ff    	lea    -0x23b0(%ebx),%eax
    1330:	50                   	push   %eax
    1331:	e8 0a f4 ff ff       	call   740 <puts@plt>
    1336:	83 c4 10             	add    $0x10,%esp
    1339:	83 ec 0c             	sub    $0xc,%esp
    133c:	6a 10                	push   $0x10
    133e:	e8 0d f4 ff ff       	call   750 <exit@plt>

00001343 <invalid_phase>:
    1343:	55                   	push   %ebp
    1344:	89 e5                	mov    %esp,%ebp
    1346:	53                   	push   %ebx
    1347:	83 ec 04             	sub    $0x4,%esp
    134a:	e8 d1 f4 ff ff       	call   820 <__x86.get_pc_thunk.bx>
    134f:	81 c3 b1 2c 00 00    	add    $0x2cb1,%ebx
    1355:	83 ec 08             	sub    $0x8,%esp
    1358:	ff 75 08             	pushl  0x8(%ebp)
    135b:	8d 83 58 dc ff ff    	lea    -0x23a8(%ebx),%eax
    1361:	50                   	push   %eax
    1362:	e8 79 f3 ff ff       	call   6e0 <printf@plt>
    1367:	83 c4 10             	add    $0x10,%esp
    136a:	83 ec 0c             	sub    $0xc,%esp
    136d:	6a 08                	push   $0x8
    136f:	e8 dc f3 ff ff       	call   750 <exit@plt>

00001374 <read_six_numbers>:
    1374:	55                   	push   %ebp
    1375:	89 e5                	mov    %esp,%ebp
    1377:	57                   	push   %edi
    1378:	56                   	push   %esi
    1379:	53                   	push   %ebx
    137a:	83 ec 1c             	sub    $0x1c,%esp
    137d:	e8 3d ff ff ff       	call   12bf <__x86.get_pc_thunk.ax>
    1382:	05 7e 2c 00 00       	add    $0x2c7e,%eax
    1387:	8b 55 0c             	mov    0xc(%ebp),%edx
    138a:	8d 7a 14             	lea    0x14(%edx),%edi
    138d:	8b 55 0c             	mov    0xc(%ebp),%edx
    1390:	8d 72 10             	lea    0x10(%edx),%esi
    1393:	8b 55 0c             	mov    0xc(%ebp),%edx
    1396:	8d 5a 0c             	lea    0xc(%edx),%ebx
    1399:	8b 55 0c             	mov    0xc(%ebp),%edx
    139c:	8d 4a 08             	lea    0x8(%edx),%ecx
    139f:	8b 55 0c             	mov    0xc(%ebp),%edx
    13a2:	83 c2 04             	add    $0x4,%edx
    13a5:	57                   	push   %edi
    13a6:	56                   	push   %esi
    13a7:	53                   	push   %ebx
    13a8:	51                   	push   %ecx
    13a9:	52                   	push   %edx
    13aa:	ff 75 0c             	pushl  0xc(%ebp)
    13ad:	8d 90 69 dc ff ff    	lea    -0x2397(%eax),%edx
    13b3:	52                   	push   %edx
    13b4:	ff 75 08             	pushl  0x8(%ebp)
    13b7:	89 c3                	mov    %eax,%ebx
    13b9:	e8 c2 f3 ff ff       	call   780 <__isoc99_sscanf@plt>
    13be:	83 c4 20             	add    $0x20,%esp
    13c1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    13c4:	83 7d e4 05          	cmpl   $0x5,-0x1c(%ebp)
    13c8:	7f 0c                	jg     13d6 <read_six_numbers+0x62>
    13ca:	e8 d6 03 00 00       	call   17a5 <explode_bomb>
    13cf:	b8 00 00 00 00       	mov    $0x0,%eax
    13d4:	eb 05                	jmp    13db <read_six_numbers+0x67>
    13d6:	b8 01 00 00 00       	mov    $0x1,%eax
    13db:	8d 65 f4             	lea    -0xc(%ebp),%esp
    13de:	5b                   	pop    %ebx
    13df:	5e                   	pop    %esi
    13e0:	5f                   	pop    %edi
    13e1:	5d                   	pop    %ebp
    13e2:	c3                   	ret

000013e3 <read_n_numbers>:
    13e3:	55                   	push   %ebp
    13e4:	89 e5                	mov    %esp,%ebp
    13e6:	53                   	push   %ebx
    13e7:	83 ec 14             	sub    $0x14,%esp
    13ea:	e8 31 f4 ff ff       	call   820 <__x86.get_pc_thunk.bx>
    13ef:	81 c3 11 2c 00 00    	add    $0x2c11,%ebx
    13f5:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    13fc:	eb 76                	jmp    1474 <read_n_numbers+0x91>
    13fe:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    1402:	75 1a                	jne    141e <read_n_numbers+0x3b>
    1404:	83 ec 08             	sub    $0x8,%esp
    1407:	8d 83 7b dc ff ff    	lea    -0x2385(%ebx),%eax
    140d:	50                   	push   %eax
    140e:	ff 75 08             	pushl  0x8(%ebp)
    1411:	e8 8a f3 ff ff       	call   7a0 <strtok@plt>
    1416:	83 c4 10             	add    $0x10,%esp
    1419:	89 45 f4             	mov    %eax,-0xc(%ebp)
    141c:	eb 17                	jmp    1435 <read_n_numbers+0x52>
    141e:	83 ec 08             	sub    $0x8,%esp
    1421:	8d 83 7b dc ff ff    	lea    -0x2385(%ebx),%eax
    1427:	50                   	push   %eax
    1428:	6a 00                	push   $0x0
    142a:	e8 71 f3 ff ff       	call   7a0 <strtok@plt>
    142f:	83 c4 10             	add    $0x10,%esp
    1432:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1435:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    1439:	74 29                	je     1464 <read_n_numbers+0x81>
    143b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    143e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
    1445:	8b 45 0c             	mov    0xc(%ebp),%eax
    1448:	01 d0                	add    %edx,%eax
    144a:	83 ec 04             	sub    $0x4,%esp
    144d:	50                   	push   %eax
    144e:	8d 83 7f dc ff ff    	lea    -0x2381(%ebx),%eax
    1454:	50                   	push   %eax
    1455:	ff 75 f4             	pushl  -0xc(%ebp)
    1458:	e8 23 f3 ff ff       	call   780 <__isoc99_sscanf@plt>
    145d:	83 c4 10             	add    $0x10,%esp
    1460:	85 c0                	test   %eax,%eax
    1462:	7f 0c                	jg     1470 <read_n_numbers+0x8d>
    1464:	e8 3c 03 00 00       	call   17a5 <explode_bomb>
    1469:	b8 00 00 00 00       	mov    $0x0,%eax
    146e:	eb 11                	jmp    1481 <read_n_numbers+0x9e>
    1470:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    1474:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1477:	3b 45 10             	cmp    0x10(%ebp),%eax
    147a:	7c 82                	jl     13fe <read_n_numbers+0x1b>
    147c:	b8 01 00 00 00       	mov    $0x1,%eax
    1481:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1484:	c9                   	leave
    1485:	c3                   	ret

00001486 <string_length>:
    1486:	55                   	push   %ebp
    1487:	89 e5                	mov    %esp,%ebp
    1489:	83 ec 10             	sub    $0x10,%esp
    148c:	e8 2e fe ff ff       	call   12bf <__x86.get_pc_thunk.ax>
    1491:	05 6f 2b 00 00       	add    $0x2b6f,%eax
    1496:	8b 45 08             	mov    0x8(%ebp),%eax
    1499:	89 45 f8             	mov    %eax,-0x8(%ebp)
    149c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    14a3:	eb 08                	jmp    14ad <string_length+0x27>
    14a5:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    14a9:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    14ad:	8b 45 f8             	mov    -0x8(%ebp),%eax
    14b0:	0f b6 00             	movzbl (%eax),%eax
    14b3:	84 c0                	test   %al,%al
    14b5:	75 ee                	jne    14a5 <string_length+0x1f>
    14b7:	8b 45 fc             	mov    -0x4(%ebp),%eax
    14ba:	c9                   	leave
    14bb:	c3                   	ret

000014bc <strings_not_equal>:
    14bc:	55                   	push   %ebp
    14bd:	89 e5                	mov    %esp,%ebp
    14bf:	53                   	push   %ebx
    14c0:	83 ec 10             	sub    $0x10,%esp
    14c3:	e8 f7 fd ff ff       	call   12bf <__x86.get_pc_thunk.ax>
    14c8:	05 38 2b 00 00       	add    $0x2b38,%eax
    14cd:	ff 75 08             	pushl  0x8(%ebp)
    14d0:	e8 b1 ff ff ff       	call   1486 <string_length>
    14d5:	83 c4 04             	add    $0x4,%esp
    14d8:	89 c3                	mov    %eax,%ebx
    14da:	ff 75 0c             	pushl  0xc(%ebp)
    14dd:	e8 a4 ff ff ff       	call   1486 <string_length>
    14e2:	83 c4 04             	add    $0x4,%esp
    14e5:	39 c3                	cmp    %eax,%ebx
    14e7:	74 07                	je     14f0 <strings_not_equal+0x34>
    14e9:	b8 01 00 00 00       	mov    $0x1,%eax
    14ee:	eb 3c                	jmp    152c <strings_not_equal+0x70>
    14f0:	8b 45 08             	mov    0x8(%ebp),%eax
    14f3:	89 45 f8             	mov    %eax,-0x8(%ebp)
    14f6:	8b 45 0c             	mov    0xc(%ebp),%eax
    14f9:	89 45 f4             	mov    %eax,-0xc(%ebp)
    14fc:	eb 1f                	jmp    151d <strings_not_equal+0x61>
    14fe:	8b 45 f8             	mov    -0x8(%ebp),%eax
    1501:	0f b6 10             	movzbl (%eax),%edx
    1504:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1507:	0f b6 00             	movzbl (%eax),%eax
    150a:	38 c2                	cmp    %al,%dl
    150c:	74 07                	je     1515 <strings_not_equal+0x59>
    150e:	b8 01 00 00 00       	mov    $0x1,%eax
    1513:	eb 17                	jmp    152c <strings_not_equal+0x70>
    1515:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    1519:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    151d:	8b 45 f8             	mov    -0x8(%ebp),%eax
    1520:	0f b6 00             	movzbl (%eax),%eax
    1523:	84 c0                	test   %al,%al
    1525:	75 d7                	jne    14fe <strings_not_equal+0x42>
    1527:	b8 00 00 00 00       	mov    $0x0,%eax
    152c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    152f:	c9                   	leave
    1530:	c3                   	ret

00001531 <initialize_bomb>:
    1531:	55                   	push   %ebp
    1532:	89 e5                	mov    %esp,%ebp
    1534:	53                   	push   %ebx
    1535:	83 ec 04             	sub    $0x4,%esp
    1538:	e8 82 fd ff ff       	call   12bf <__x86.get_pc_thunk.ax>
    153d:	05 c3 2a 00 00       	add    $0x2ac3,%eax
    1542:	83 ec 08             	sub    $0x8,%esp
    1545:	8d 90 c3 d2 ff ff    	lea    -0x2d3d(%eax),%edx
    154b:	52                   	push   %edx
    154c:	6a 02                	push   $0x2
    154e:	89 c3                	mov    %eax,%ebx
    1550:	e8 bb f1 ff ff       	call   710 <signal@plt>
    1555:	83 c4 10             	add    $0x10,%esp
    1558:	90                   	nop
    1559:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    155c:	c9                   	leave
    155d:	c3                   	ret

0000155e <initialize_bomb_solve>:
    155e:	55                   	push   %ebp
    155f:	89 e5                	mov    %esp,%ebp
    1561:	e8 59 fd ff ff       	call   12bf <__x86.get_pc_thunk.ax>
    1566:	05 9a 2a 00 00       	add    $0x2a9a,%eax
    156b:	90                   	nop
    156c:	5d                   	pop    %ebp
    156d:	c3                   	ret

0000156e <blank_line>:
    156e:	55                   	push   %ebp
    156f:	89 e5                	mov    %esp,%ebp
    1571:	53                   	push   %ebx
    1572:	83 ec 04             	sub    $0x4,%esp
    1575:	e8 a6 f2 ff ff       	call   820 <__x86.get_pc_thunk.bx>
    157a:	81 c3 86 2a 00 00    	add    $0x2a86,%ebx
    1580:	eb 30                	jmp    15b2 <blank_line+0x44>
    1582:	e8 39 f2 ff ff       	call   7c0 <__ctype_b_loc@plt>
    1587:	8b 08                	mov    (%eax),%ecx
    1589:	8b 45 08             	mov    0x8(%ebp),%eax
    158c:	8d 50 01             	lea    0x1(%eax),%edx
    158f:	89 55 08             	mov    %edx,0x8(%ebp)
    1592:	0f b6 00             	movzbl (%eax),%eax
    1595:	0f be c0             	movsbl %al,%eax
    1598:	01 c0                	add    %eax,%eax
    159a:	01 c8                	add    %ecx,%eax
    159c:	0f b7 00             	movzwl (%eax),%eax
    159f:	0f b7 c0             	movzwl %ax,%eax
    15a2:	25 00 20 00 00       	and    $0x2000,%eax
    15a7:	85 c0                	test   %eax,%eax
    15a9:	75 07                	jne    15b2 <blank_line+0x44>
    15ab:	b8 00 00 00 00       	mov    $0x0,%eax
    15b0:	eb 0f                	jmp    15c1 <blank_line+0x53>
    15b2:	8b 45 08             	mov    0x8(%ebp),%eax
    15b5:	0f b6 00             	movzbl (%eax),%eax
    15b8:	84 c0                	test   %al,%al
    15ba:	75 c6                	jne    1582 <blank_line+0x14>
    15bc:	b8 01 00 00 00       	mov    $0x1,%eax
    15c1:	83 c4 04             	add    $0x4,%esp
    15c4:	5b                   	pop    %ebx
    15c5:	5d                   	pop    %ebp
    15c6:	c3                   	ret

000015c7 <skip>:
    15c7:	55                   	push   %ebp
    15c8:	89 e5                	mov    %esp,%ebp
    15ca:	53                   	push   %ebx
    15cb:	83 ec 14             	sub    $0x14,%esp
    15ce:	e8 4d f2 ff ff       	call   820 <__x86.get_pc_thunk.bx>
    15d3:	81 c3 2d 2a 00 00    	add    $0x2a2d,%ebx
    15d9:	8d 83 68 02 00 00    	lea    0x268(%ebx),%eax
    15df:	8b 08                	mov    (%eax),%ecx
    15e1:	8b 93 64 02 00 00    	mov    0x264(%ebx),%edx
    15e7:	89 d0                	mov    %edx,%eax
    15e9:	c1 e0 02             	shl    $0x2,%eax
    15ec:	01 d0                	add    %edx,%eax
    15ee:	c1 e0 04             	shl    $0x4,%eax
    15f1:	8d 93 80 02 00 00    	lea    0x280(%ebx),%edx
    15f7:	01 d0                	add    %edx,%eax
    15f9:	83 ec 04             	sub    $0x4,%esp
    15fc:	51                   	push   %ecx
    15fd:	6a 50                	push   $0x50
    15ff:	50                   	push   %eax
    1600:	e8 fb f0 ff ff       	call   700 <fgets@plt>
    1605:	83 c4 10             	add    $0x10,%esp
    1608:	89 45 f4             	mov    %eax,-0xc(%ebp)
    160b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    160f:	74 12                	je     1623 <skip+0x5c>
    1611:	83 ec 0c             	sub    $0xc,%esp
    1614:	ff 75 f4             	pushl  -0xc(%ebp)
    1617:	e8 52 ff ff ff       	call   156e <blank_line>
    161c:	83 c4 10             	add    $0x10,%esp
    161f:	85 c0                	test   %eax,%eax
    1621:	75 b6                	jne    15d9 <skip+0x12>
    1623:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1626:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1629:	c9                   	leave
    162a:	c3                   	ret

0000162b <read_line>:
    162b:	55                   	push   %ebp
    162c:	89 e5                	mov    %esp,%ebp
    162e:	56                   	push   %esi
    162f:	53                   	push   %ebx
    1630:	83 ec 10             	sub    $0x10,%esp
    1633:	e8 e8 f1 ff ff       	call   820 <__x86.get_pc_thunk.bx>
    1638:	81 c3 c8 29 00 00    	add    $0x29c8,%ebx
    163e:	e8 84 ff ff ff       	call   15c7 <skip>
    1643:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1646:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    164a:	0f 85 8a 00 00 00    	jne    16da <read_line+0xaf>
    1650:	8d 83 68 02 00 00    	lea    0x268(%ebx),%eax
    1656:	8b 10                	mov    (%eax),%edx
    1658:	8b 83 ec ff ff ff    	mov    -0x14(%ebx),%eax
    165e:	8b 00                	mov    (%eax),%eax
    1660:	39 c2                	cmp    %eax,%edx
    1662:	75 1c                	jne    1680 <read_line+0x55>
    1664:	83 ec 0c             	sub    $0xc,%esp
    1667:	8d 83 82 dc ff ff    	lea    -0x237e(%ebx),%eax
    166d:	50                   	push   %eax
    166e:	e8 cd f0 ff ff       	call   740 <puts@plt>
    1673:	83 c4 10             	add    $0x10,%esp
    1676:	83 ec 0c             	sub    $0xc,%esp
    1679:	6a 08                	push   $0x8
    167b:	e8 d0 f0 ff ff       	call   750 <exit@plt>
    1680:	83 ec 0c             	sub    $0xc,%esp
    1683:	8d 83 a0 dc ff ff    	lea    -0x2360(%ebx),%eax
    1689:	50                   	push   %eax
    168a:	e8 a1 f0 ff ff       	call   730 <getenv@plt>
    168f:	83 c4 10             	add    $0x10,%esp
    1692:	85 c0                	test   %eax,%eax
    1694:	74 0a                	je     16a0 <read_line+0x75>
    1696:	83 ec 0c             	sub    $0xc,%esp
    1699:	6a 00                	push   $0x0
    169b:	e8 b0 f0 ff ff       	call   750 <exit@plt>
    16a0:	8b 83 ec ff ff ff    	mov    -0x14(%ebx),%eax
    16a6:	8b 10                	mov    (%eax),%edx
    16a8:	8d 83 68 02 00 00    	lea    0x268(%ebx),%eax
    16ae:	89 10                	mov    %edx,(%eax)
    16b0:	e8 12 ff ff ff       	call   15c7 <skip>
    16b5:	89 45 f4             	mov    %eax,-0xc(%ebp)
    16b8:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    16bc:	75 1c                	jne    16da <read_line+0xaf>
    16be:	83 ec 0c             	sub    $0xc,%esp
    16c1:	8d 83 82 dc ff ff    	lea    -0x237e(%ebx),%eax
    16c7:	50                   	push   %eax
    16c8:	e8 73 f0 ff ff       	call   740 <puts@plt>
    16cd:	83 c4 10             	add    $0x10,%esp
    16d0:	83 ec 0c             	sub    $0xc,%esp
    16d3:	6a 00                	push   $0x0
    16d5:	e8 76 f0 ff ff       	call   750 <exit@plt>
    16da:	8b 93 64 02 00 00    	mov    0x264(%ebx),%edx
    16e0:	89 d0                	mov    %edx,%eax
    16e2:	c1 e0 02             	shl    $0x2,%eax
    16e5:	01 d0                	add    %edx,%eax
    16e7:	c1 e0 04             	shl    $0x4,%eax
    16ea:	8d 93 80 02 00 00    	lea    0x280(%ebx),%edx
    16f0:	01 d0                	add    %edx,%eax
    16f2:	83 ec 0c             	sub    $0xc,%esp
    16f5:	50                   	push   %eax
    16f6:	e8 65 f0 ff ff       	call   760 <strlen@plt>
    16fb:	83 c4 10             	add    $0x10,%esp
    16fe:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1701:	83 7d f0 4e          	cmpl   $0x4e,-0x10(%ebp)
    1705:	7e 53                	jle    175a <read_line+0x12f>
    1707:	83 ec 0c             	sub    $0xc,%esp
    170a:	8d 83 ab dc ff ff    	lea    -0x2355(%ebx),%eax
    1710:	50                   	push   %eax
    1711:	e8 2a f0 ff ff       	call   740 <puts@plt>
    1716:	83 c4 10             	add    $0x10,%esp
    1719:	8b 93 64 02 00 00    	mov    0x264(%ebx),%edx
    171f:	8d 42 01             	lea    0x1(%edx),%eax
    1722:	89 83 64 02 00 00    	mov    %eax,0x264(%ebx)
    1728:	89 d0                	mov    %edx,%eax
    172a:	c1 e0 02             	shl    $0x2,%eax
    172d:	01 d0                	add    %edx,%eax
    172f:	c1 e0 04             	shl    $0x4,%eax
    1732:	8d 93 80 02 00 00    	lea    0x280(%ebx),%edx
    1738:	01 d0                	add    %edx,%eax
    173a:	c7 00 2a 2a 2a 74    	movl   $0x742a2a2a,(%eax)
    1740:	c7 40 04 72 75 6e 63 	movl   $0x636e7572,0x4(%eax)
    1747:	c7 40 08 61 74 65 64 	movl   $0x64657461,0x8(%eax)
    174e:	c7 40 0c 2a 2a 2a 00 	movl   $0x2a2a2a,0xc(%eax)
    1755:	e8 4b 00 00 00       	call   17a5 <explode_bomb>
    175a:	8b 93 64 02 00 00    	mov    0x264(%ebx),%edx
    1760:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1763:	8d 70 ff             	lea    -0x1(%eax),%esi
    1766:	8d 8b 80 02 00 00    	lea    0x280(%ebx),%ecx
    176c:	89 d0                	mov    %edx,%eax
    176e:	c1 e0 02             	shl    $0x2,%eax
    1771:	01 d0                	add    %edx,%eax
    1773:	c1 e0 04             	shl    $0x4,%eax
    1776:	01 c8                	add    %ecx,%eax
    1778:	01 f0                	add    %esi,%eax
    177a:	c6 00 00             	movb   $0x0,(%eax)
    177d:	8b 93 64 02 00 00    	mov    0x264(%ebx),%edx
    1783:	8d 42 01             	lea    0x1(%edx),%eax
    1786:	89 83 64 02 00 00    	mov    %eax,0x264(%ebx)
    178c:	89 d0                	mov    %edx,%eax
    178e:	c1 e0 02             	shl    $0x2,%eax
    1791:	01 d0                	add    %edx,%eax
    1793:	c1 e0 04             	shl    $0x4,%eax
    1796:	8d 93 80 02 00 00    	lea    0x280(%ebx),%edx
    179c:	01 d0                	add    %edx,%eax
    179e:	8d 65 f8             	lea    -0x8(%ebp),%esp
    17a1:	5b                   	pop    %ebx
    17a2:	5e                   	pop    %esi
    17a3:	5d                   	pop    %ebp
    17a4:	c3                   	ret

000017a5 <explode_bomb>:
    17a5:	55                   	push   %ebp
    17a6:	89 e5                	mov    %esp,%ebp
    17a8:	53                   	push   %ebx
    17a9:	83 ec 04             	sub    $0x4,%esp
    17ac:	e8 6f f0 ff ff       	call   820 <__x86.get_pc_thunk.bx>
    17b1:	81 c3 4f 28 00 00    	add    $0x284f,%ebx
    17b7:	83 ec 0c             	sub    $0xc,%esp
    17ba:	8d 83 c6 dc ff ff    	lea    -0x233a(%ebx),%eax
    17c0:	50                   	push   %eax
    17c1:	e8 7a ef ff ff       	call   740 <puts@plt>
    17c6:	83 c4 10             	add    $0x10,%esp
    17c9:	83 ec 0c             	sub    $0xc,%esp
    17cc:	8d 83 cf dc ff ff    	lea    -0x2331(%ebx),%eax
    17d2:	50                   	push   %eax
    17d3:	e8 68 ef ff ff       	call   740 <puts@plt>
    17d8:	83 c4 10             	add    $0x10,%esp
    17db:	90                   	nop
    17dc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    17df:	c9                   	leave
    17e0:	c3                   	ret

000017e1 <phase_defused>:
    17e1:	55                   	push   %ebp
    17e2:	89 e5                	mov    %esp,%ebp
    17e4:	53                   	push   %ebx
    17e5:	83 ec 64             	sub    $0x64,%esp
    17e8:	e8 33 f0 ff ff       	call   820 <__x86.get_pc_thunk.bx>
    17ed:	81 c3 13 28 00 00    	add    $0x2813,%ebx
    17f3:	8b 83 64 02 00 00    	mov    0x264(%ebx),%eax
    17f9:	83 f8 07             	cmp    $0x7,%eax
    17fc:	0f 85 89 00 00 00    	jne    188b <phase_defused+0xaa>
    1802:	83 ec 0c             	sub    $0xc,%esp
    1805:	8d 45 a4             	lea    -0x5c(%ebp),%eax
    1808:	50                   	push   %eax
    1809:	8d 45 9c             	lea    -0x64(%ebp),%eax
    180c:	50                   	push   %eax
    180d:	8d 45 a0             	lea    -0x60(%ebp),%eax
    1810:	50                   	push   %eax
    1811:	8d 83 e6 dc ff ff    	lea    -0x231a(%ebx),%eax
    1817:	50                   	push   %eax
    1818:	8d 83 80 02 00 00    	lea    0x280(%ebx),%eax
    181e:	8d 80 40 01 00 00    	lea    0x140(%eax),%eax
    1824:	50                   	push   %eax
    1825:	e8 56 ef ff ff       	call   780 <__isoc99_sscanf@plt>
    182a:	83 c4 20             	add    $0x20,%esp
    182d:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1830:	83 7d f4 03          	cmpl   $0x3,-0xc(%ebp)
    1834:	75 43                	jne    1879 <phase_defused+0x98>
    1836:	83 ec 08             	sub    $0x8,%esp
    1839:	8d 83 ef dc ff ff    	lea    -0x2311(%ebx),%eax
    183f:	50                   	push   %eax
    1840:	8d 45 a4             	lea    -0x5c(%ebp),%eax
    1843:	50                   	push   %eax
    1844:	e8 73 fc ff ff       	call   14bc <strings_not_equal>
    1849:	83 c4 10             	add    $0x10,%esp
    184c:	85 c0                	test   %eax,%eax
    184e:	75 29                	jne    1879 <phase_defused+0x98>
    1850:	83 ec 0c             	sub    $0xc,%esp
    1853:	8d 83 f8 dc ff ff    	lea    -0x2308(%ebx),%eax
    1859:	50                   	push   %eax
    185a:	e8 e1 ee ff ff       	call   740 <puts@plt>
    185f:	83 c4 10             	add    $0x10,%esp
    1862:	83 ec 0c             	sub    $0xc,%esp
    1865:	8d 83 20 dd ff ff    	lea    -0x22e0(%ebx),%eax
    186b:	50                   	push   %eax
    186c:	e8 cf ee ff ff       	call   740 <puts@plt>
    1871:	83 c4 10             	add    $0x10,%esp
    1874:	e8 b5 f9 ff ff       	call   122e <secret_phase>
    1879:	83 ec 0c             	sub    $0xc,%esp
    187c:	8d 83 58 dd ff ff    	lea    -0x22a8(%ebx),%eax
    1882:	50                   	push   %eax
    1883:	e8 b8 ee ff ff       	call   740 <puts@plt>
    1888:	83 c4 10             	add    $0x10,%esp
    188b:	90                   	nop
    188c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    188f:	c9                   	leave
    1890:	c3                   	ret
    1891:	66 90                	xchg   %ax,%ax
    1893:	66 90                	xchg   %ax,%ax
    1895:	66 90                	xchg   %ax,%ax
    1897:	66 90                	xchg   %ax,%ax
    1899:	66 90                	xchg   %ax,%ax
    189b:	66 90                	xchg   %ax,%ax
    189d:	66 90                	xchg   %ax,%ax
    189f:	90                   	nop

000018a0 <__libc_csu_init>:
    18a0:	55                   	push   %ebp
    18a1:	57                   	push   %edi
    18a2:	56                   	push   %esi
    18a3:	53                   	push   %ebx
    18a4:	e8 77 ef ff ff       	call   820 <__x86.get_pc_thunk.bx>
    18a9:	81 c3 57 27 00 00    	add    $0x2757,%ebx
    18af:	83 ec 0c             	sub    $0xc,%esp
    18b2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
    18b6:	8d b3 e8 fe ff ff    	lea    -0x118(%ebx),%esi
    18bc:	e8 df ed ff ff       	call   6a0 <_init>
    18c1:	8d 83 e4 fe ff ff    	lea    -0x11c(%ebx),%eax
    18c7:	29 c6                	sub    %eax,%esi
    18c9:	c1 fe 02             	sar    $0x2,%esi
    18cc:	85 f6                	test   %esi,%esi
    18ce:	74 25                	je     18f5 <__libc_csu_init+0x55>
    18d0:	31 ff                	xor    %edi,%edi
    18d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    18d8:	83 ec 04             	sub    $0x4,%esp
    18db:	ff 74 24 2c          	pushl  0x2c(%esp)
    18df:	ff 74 24 2c          	pushl  0x2c(%esp)
    18e3:	55                   	push   %ebp
    18e4:	ff 94 bb e4 fe ff ff 	call   *-0x11c(%ebx,%edi,4)
    18eb:	83 c7 01             	add    $0x1,%edi
    18ee:	83 c4 10             	add    $0x10,%esp
    18f1:	39 fe                	cmp    %edi,%esi
    18f3:	75 e3                	jne    18d8 <__libc_csu_init+0x38>
    18f5:	83 c4 0c             	add    $0xc,%esp
    18f8:	5b                   	pop    %ebx
    18f9:	5e                   	pop    %esi
    18fa:	5f                   	pop    %edi
    18fb:	5d                   	pop    %ebp
    18fc:	c3                   	ret
    18fd:	8d 76 00             	lea    0x0(%esi),%esi

00001900 <__libc_csu_fini>:
    1900:	f3 c3                	repz ret

Disassembly of section .fini:

00001904 <_fini>:
    1904:	53                   	push   %ebx
    1905:	83 ec 08             	sub    $0x8,%esp
    1908:	e8 13 ef ff ff       	call   820 <__x86.get_pc_thunk.bx>
    190d:	81 c3 f3 26 00 00    	add    $0x26f3,%ebx
    1913:	83 c4 08             	add    $0x8,%esp
    1916:	5b                   	pop    %ebx
    1917:	c3                   	ret
