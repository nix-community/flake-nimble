{
  description = ''YAML 1.2 implementation for Nim'';
  inputs.src-yaml-v0_10_4.flake = false;
  inputs.src-yaml-v0_10_4.type = "github";
  inputs.src-yaml-v0_10_4.owner = "flyx";
  inputs.src-yaml-v0_10_4.repo = "NimYAML";
  inputs.src-yaml-v0_10_4.ref = "refs/tags/v0.10.4";
  
  outputs = { self, nixpkgs, src-yaml-v0_10_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-yaml-v0_10_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-yaml-v0_10_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}