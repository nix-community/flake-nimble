{
  description = ''
    Load Windows DLL from memory
  '';
  inputs.src-memlib.url = "https://github.com/khchen/memlib";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
