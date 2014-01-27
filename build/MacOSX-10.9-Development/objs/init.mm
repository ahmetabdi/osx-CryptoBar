extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_define_global_const(const char *, void *);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_8DF1B9E242A547FC8E86B43B65E1F30E(void *, void *);
void MREP_D7706661FE684CBB8A24CBF33272ED6C(void *, void *);
void MREP_87C13EF5668449EBB3485054C6058150(void *, void *);
void MREP_401AEC22BFF14800B80267F8B33E566E(void *, void *);
void MREP_85D8958EDFED4DCDB3E775CD1A055225(void *, void *);
void MREP_5A024024FF874746B0DBBDCDEF202A27(void *, void *);
void MREP_1CACCB28499A43B5962D6D9538A7CF87(void *, void *);
void MREP_EF6905D1914E4AABAB770BCEE4D35A87(void *, void *);
void MREP_F6ED28E245974DC58919B261796EB85A(void *, void *);
void MREP_A88139D130334F9497FC2FB0ADA01FF6(void *, void *);
void MREP_DD6A45E4230247FCA32956E11DFCB935(void *, void *);
void MREP_A8C1D3A359484B1EB34C81704B4E2645(void *, void *);
void MREP_CA3C6F4A5EB64B78AA1EE895B5911811(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
#if !__LP64__
	try {
#endif
	    void *self = rb_vm_top_self();
rb_define_global_const("RUBYMOTION_ENV", @"development");
rb_define_global_const("RUBYMOTION_VERSION", @"2.19");
MREP_8DF1B9E242A547FC8E86B43B65E1F30E(self, 0);
MREP_D7706661FE684CBB8A24CBF33272ED6C(self, 0);
MREP_87C13EF5668449EBB3485054C6058150(self, 0);
MREP_401AEC22BFF14800B80267F8B33E566E(self, 0);
MREP_85D8958EDFED4DCDB3E775CD1A055225(self, 0);
MREP_5A024024FF874746B0DBBDCDEF202A27(self, 0);
MREP_1CACCB28499A43B5962D6D9538A7CF87(self, 0);
MREP_EF6905D1914E4AABAB770BCEE4D35A87(self, 0);
MREP_F6ED28E245974DC58919B261796EB85A(self, 0);
MREP_A88139D130334F9497FC2FB0ADA01FF6(self, 0);
MREP_DD6A45E4230247FCA32956E11DFCB935(self, 0);
MREP_A8C1D3A359484B1EB34C81704B4E2645(self, 0);
MREP_CA3C6F4A5EB64B78AA1EE895B5911811(self, 0);
#if !__LP64__
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
#endif
	initialized = true;
    }
}
