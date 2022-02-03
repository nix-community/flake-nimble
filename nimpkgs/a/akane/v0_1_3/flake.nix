{
  description = ''The Nim asynchronous web framework.'';
  inputs.src-akane-v0_1_3.flake = false;
  inputs.src-akane-v0_1_3.type = "github";
  inputs.src-akane-v0_1_3.owner = "ethosa";
  inputs.src-akane-v0_1_3.repo = "akane";
  inputs.src-akane-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-akane-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-akane-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-akane-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}