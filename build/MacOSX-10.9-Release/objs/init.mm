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
void MREP_26D4C80D6ED841CEB7054D14FBE7DB80(void *, void *);
void MREP_255266E84BD64B57970C3DC579C35EF7(void *, void *);
void MREP_13B77B836E0D4B299BE6B475D721AE8A(void *, void *);
void MREP_94C234DA41BC4C69A039C1C5C5FE7C3D(void *, void *);
void MREP_9E83EEF6E59641929445285B19E5133C(void *, void *);
void MREP_F08865AC331D4529A3D9CA4953147CA2(void *, void *);
void MREP_85CE8F5B911B4D918D45F8BC5519C0BE(void *, void *);
void MREP_01612D563FED4E28B0094F44D21EC8DC(void *, void *);
void MREP_CAA2C21D2FAF4085BEE2EC7734D40DF5(void *, void *);
void MREP_5F20C07EB0DB45009D95522A797EF255(void *, void *);
void MREP_DEAB4A76555444B0B15DAEC877CB74D5(void *, void *);
void MREP_BFEB0CA0A92349548B62196880069AAD(void *, void *);
void MREP_CF8AEF9EA9774A1E96B66BD477F54D15(void *, void *);
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
rb_define_global_const("RUBYMOTION_ENV", @"release");
rb_define_global_const("RUBYMOTION_VERSION", @"2.19");
MREP_26D4C80D6ED841CEB7054D14FBE7DB80(self, 0);
MREP_255266E84BD64B57970C3DC579C35EF7(self, 0);
MREP_13B77B836E0D4B299BE6B475D721AE8A(self, 0);
MREP_94C234DA41BC4C69A039C1C5C5FE7C3D(self, 0);
MREP_9E83EEF6E59641929445285B19E5133C(self, 0);
MREP_F08865AC331D4529A3D9CA4953147CA2(self, 0);
MREP_85CE8F5B911B4D918D45F8BC5519C0BE(self, 0);
MREP_01612D563FED4E28B0094F44D21EC8DC(self, 0);
MREP_CAA2C21D2FAF4085BEE2EC7734D40DF5(self, 0);
MREP_5F20C07EB0DB45009D95522A797EF255(self, 0);
MREP_DEAB4A76555444B0B15DAEC877CB74D5(self, 0);
MREP_BFEB0CA0A92349548B62196880069AAD(self, 0);
MREP_CF8AEF9EA9774A1E96B66BD477F54D15(self, 0);
#if !__LP64__
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
#endif
	initialized = true;
    }
}
