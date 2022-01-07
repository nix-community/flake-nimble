{
  description = ''
    Low-level wrapper for OpenCL
  '';
  inputs.src-opencl.url = "https://github.com/nim-lang/opencl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
