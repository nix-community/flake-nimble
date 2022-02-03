{
  description = ''YAML 1.2 implementation for Nim'';
  inputs.src-yaml-v0_6_3.flake = false;
  inputs.src-yaml-v0_6_3.type = "github";
  inputs.src-yaml-v0_6_3.owner = "flyx";
  inputs.src-yaml-v0_6_3.repo = "NimYAML";
  inputs.src-yaml-v0_6_3.ref = "refs/tags/v0.6.3";
  
  outputs = { self, nixpkgs, src-yaml-v0_6_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-yaml-v0_6_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-yaml-v0_6_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}