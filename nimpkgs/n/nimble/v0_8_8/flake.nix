{
  description = ''Nimble package manager'';
  inputs.src-nimble-v0_8_8.flake = false;
  inputs.src-nimble-v0_8_8.type = "github";
  inputs.src-nimble-v0_8_8.owner = "nim-lang";
  inputs.src-nimble-v0_8_8.repo = "nimble";
  inputs.src-nimble-v0_8_8.ref = "refs/tags/v0.8.8";
  
  outputs = { self, nixpkgs, src-nimble-v0_8_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimble-v0_8_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimble-v0_8_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}