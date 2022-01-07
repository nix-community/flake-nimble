{
  description = ''
    Nim wrapper for distorm3 - Powerful Disassembler Library For x86/AMD64
  '';
  inputs.src-distorm3.url = "https://github.com/ba0f3/distorm3.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
