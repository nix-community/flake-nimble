{
  description = ''Nimble package manager'';
  inputs.src-nimble-v0_13_1.flake = false;
  inputs.src-nimble-v0_13_1.type = "github";
  inputs.src-nimble-v0_13_1.owner = "nim-lang";
  inputs.src-nimble-v0_13_1.repo = "nimble";
  inputs.src-nimble-v0_13_1.ref = "refs/tags/v0.13.1";
  
  outputs = { self, nixpkgs, src-nimble-v0_13_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimble-v0_13_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimble-v0_13_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}