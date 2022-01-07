{
  description = ''
    Wrapper for VMProtect SDK
  '';
  inputs.src-vmprotect.url = "https://github.com/ba0f3/vmprotect.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
