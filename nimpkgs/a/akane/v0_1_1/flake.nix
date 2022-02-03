{
  description = ''The Nim asynchronous web framework.'';
  inputs.src-akane-v0_1_1.flake = false;
  inputs.src-akane-v0_1_1.type = "github";
  inputs.src-akane-v0_1_1.owner = "ethosa";
  inputs.src-akane-v0_1_1.repo = "akane";
  inputs.src-akane-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-akane-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-akane-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-akane-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}