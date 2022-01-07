{
  description = ''
    wrapper for kexpr math expression evaluation library
  '';
  inputs.src-kexpr.url = "https://github.com/brentp/kexpr-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
