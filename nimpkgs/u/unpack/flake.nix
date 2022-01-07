{
  description = ''
    Array/Sequence/Object destructuring/unpacking macro
  '';
  inputs.src-unpack.url = "https://github.com/technicallyagd/unpack";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
