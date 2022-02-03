{
  description = ''The Nim asynchronous web framework.'';
  inputs.src-akane-v0_1_0.flake = false;
  inputs.src-akane-v0_1_0.type = "github";
  inputs.src-akane-v0_1_0.owner = "ethosa";
  inputs.src-akane-v0_1_0.repo = "akane";
  inputs.src-akane-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-akane-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-akane-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-akane-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}