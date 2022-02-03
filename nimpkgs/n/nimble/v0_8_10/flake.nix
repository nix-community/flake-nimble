{
  description = ''Nimble package manager'';
  inputs.src-nimble-v0_8_10.flake = false;
  inputs.src-nimble-v0_8_10.type = "github";
  inputs.src-nimble-v0_8_10.owner = "nim-lang";
  inputs.src-nimble-v0_8_10.repo = "nimble";
  inputs.src-nimble-v0_8_10.ref = "refs/tags/v0.8.10";
  
  outputs = { self, nixpkgs, src-nimble-v0_8_10, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimble-v0_8_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimble-v0_8_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}