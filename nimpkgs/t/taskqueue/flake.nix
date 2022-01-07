{
  description = ''
    High precision and high performance task scheduler 
  '';
  inputs.src-taskqueue.url = "https://github.com/jackhftang/taskqueue.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
