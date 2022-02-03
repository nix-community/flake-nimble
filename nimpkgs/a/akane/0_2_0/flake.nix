{
  description = ''The Nim asynchronous web framework.'';
  inputs.src-akane-0_2_0.flake = false;
  inputs.src-akane-0_2_0.type = "github";
  inputs.src-akane-0_2_0.owner = "ethosa";
  inputs.src-akane-0_2_0.repo = "akane";
  inputs.src-akane-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-akane-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-akane-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-akane-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}