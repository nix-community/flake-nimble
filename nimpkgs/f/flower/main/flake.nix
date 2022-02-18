{
  description = ''A pure Nim bloom filter.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-flower-main.flake = false;
  inputs.src-flower-main.type = "github";
  inputs.src-flower-main.owner = "dizzyliam";
  inputs.src-flower-main.repo = "flower";
  inputs.src-flower-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-flower-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flower-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-flower-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}