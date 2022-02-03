{
  description = ''Nimble package manager'';
  inputs.src-nimble-v0_4.flake = false;
  inputs.src-nimble-v0_4.type = "github";
  inputs.src-nimble-v0_4.owner = "nim-lang";
  inputs.src-nimble-v0_4.repo = "nimble";
  inputs.src-nimble-v0_4.ref = "refs/tags/v0.4";
  
  outputs = { self, nixpkgs, src-nimble-v0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimble-v0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimble-v0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}