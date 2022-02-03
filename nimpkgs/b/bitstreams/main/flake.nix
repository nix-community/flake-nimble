{
  description = ''Interface for reading per bits'';
  inputs.src-bitstreams-main.flake = false;
  inputs.src-bitstreams-main.type = "github";
  inputs.src-bitstreams-main.owner = "sealmove";
  inputs.src-bitstreams-main.repo = "bitstreams";
  inputs.src-bitstreams-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-bitstreams-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitstreams-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bitstreams-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}