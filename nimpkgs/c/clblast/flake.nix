{
  description = ''
    Wrapper for CLBlast, an OpenCL BLAS library
  '';
  inputs.src-clblast.url = "https://github.com/numforge/nim-clblast";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
