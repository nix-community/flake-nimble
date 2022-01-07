{
  description = ''
    onnxruntime C Api wrapped for nim
  '';
  inputs.src-onnxruntime.url = "https://github.com/YesDrX/onnxruntime-nim.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
