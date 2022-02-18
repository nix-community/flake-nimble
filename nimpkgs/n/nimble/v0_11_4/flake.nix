{
  description = ''Nimble package manager'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimble-v0_11_4.flake = false;
  inputs.src-nimble-v0_11_4.type = "github";
  inputs.src-nimble-v0_11_4.owner = "nim-lang";
  inputs.src-nimble-v0_11_4.repo = "nimble";
  inputs.src-nimble-v0_11_4.ref = "refs/tags/v0.11.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimble-v0_11_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimble-v0_11_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimble-v0_11_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}