{
  description = ''
    libbpf for nim
  '';
  inputs.src-nimbpf.url = "https://github.com/jasonk000/nimbpf";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
