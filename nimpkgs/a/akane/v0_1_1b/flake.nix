{
  description = ''The Nim asynchronous web framework.'';
  inputs.src-akane-v0_1_1b.flake = false;
  inputs.src-akane-v0_1_1b.type = "github";
  inputs.src-akane-v0_1_1b.owner = "ethosa";
  inputs.src-akane-v0_1_1b.repo = "akane";
  inputs.src-akane-v0_1_1b.ref = "refs/tags/v0.1.1b";
  
  outputs = { self, nixpkgs, src-akane-v0_1_1b, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-akane-v0_1_1b;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-akane-v0_1_1b"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}