{
  description = ''The Nim asynchronous web framework.'';
  inputs.src-akane-v0_1_5.flake = false;
  inputs.src-akane-v0_1_5.type = "github";
  inputs.src-akane-v0_1_5.owner = "ethosa";
  inputs.src-akane-v0_1_5.repo = "akane";
  inputs.src-akane-v0_1_5.ref = "refs/tags/v0.1.5";
  
  outputs = { self, nixpkgs, src-akane-v0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-akane-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-akane-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}