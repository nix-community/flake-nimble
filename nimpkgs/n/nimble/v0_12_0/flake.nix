{
  description = ''Nimble package manager'';
  inputs.src-nimble-v0_12_0.flake = false;
  inputs.src-nimble-v0_12_0.type = "github";
  inputs.src-nimble-v0_12_0.owner = "nim-lang";
  inputs.src-nimble-v0_12_0.repo = "nimble";
  inputs.src-nimble-v0_12_0.ref = "refs/tags/v0.12.0";
  
  outputs = { self, nixpkgs, src-nimble-v0_12_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimble-v0_12_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimble-v0_12_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}