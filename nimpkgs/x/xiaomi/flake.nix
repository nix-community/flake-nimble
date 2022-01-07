{
  description = ''
    Read and write to Xiaomi IOT devices.
  '';
  inputs.src-xiaomi.url = "https://github.com/ThomasTJdev/nim_xiaomi.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
