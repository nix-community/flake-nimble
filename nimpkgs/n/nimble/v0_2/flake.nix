{
  description = ''Nimble package manager'';
  inputs.src-nimble-v0_2.flake = false;
  inputs.src-nimble-v0_2.type = "github";
  inputs.src-nimble-v0_2.owner = "nim-lang";
  inputs.src-nimble-v0_2.repo = "nimble";
  inputs.src-nimble-v0_2.ref = "refs/tags/v0.2";
  
  outputs = { self, nixpkgs, src-nimble-v0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimble-v0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimble-v0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}