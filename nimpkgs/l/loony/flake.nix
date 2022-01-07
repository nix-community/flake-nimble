{
  description = ''
    Lock-free threadsafe MPMC with high throughput
  '';
  inputs.src-loony.url = "https://github.com/shayanhabibi/loony";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
