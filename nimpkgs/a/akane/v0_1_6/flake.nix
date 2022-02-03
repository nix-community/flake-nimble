{
  description = ''The Nim asynchronous web framework.'';
  inputs.src-akane-v0_1_6.flake = false;
  inputs.src-akane-v0_1_6.type = "github";
  inputs.src-akane-v0_1_6.owner = "ethosa";
  inputs.src-akane-v0_1_6.repo = "akane";
  inputs.src-akane-v0_1_6.ref = "refs/tags/v0.1.6";
  
  outputs = { self, nixpkgs, src-akane-v0_1_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-akane-v0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-akane-v0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}