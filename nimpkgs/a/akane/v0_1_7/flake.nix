{
  description = ''The Nim asynchronous web framework.'';
  inputs.src-akane-v0_1_7.flake = false;
  inputs.src-akane-v0_1_7.type = "github";
  inputs.src-akane-v0_1_7.owner = "ethosa";
  inputs.src-akane-v0_1_7.repo = "akane";
  inputs.src-akane-v0_1_7.ref = "refs/tags/v0.1.7";
  
  outputs = { self, nixpkgs, src-akane-v0_1_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-akane-v0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-akane-v0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}