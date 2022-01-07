{
  description = ''
    Minimalistic Kernel-Syslogd For Linux in Nim
  '';
  inputs.src-kslog.url = "https://github.com/c-blake/kslog.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
