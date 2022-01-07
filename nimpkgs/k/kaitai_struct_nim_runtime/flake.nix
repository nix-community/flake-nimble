{
  description = ''
    Kaitai Struct runtime library for Nim
  '';
  inputs.src-kaitai_struct_nim_runtime.url = "https://github.com/kaitai-io/kaitai_struct_nim_runtime";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
