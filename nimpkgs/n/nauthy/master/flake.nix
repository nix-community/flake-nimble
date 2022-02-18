{
  description = ''Nim library for One Time Password verification and generation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nauthy-master.flake = false;
  inputs.src-nauthy-master.type = "github";
  inputs.src-nauthy-master.owner = "lzoz";
  inputs.src-nauthy-master.repo = "nauthy";
  inputs.src-nauthy-master.ref = "refs/heads/master";
  
  
  inputs."nimsha2".type = "github";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".repo = "flake-nimble";
  inputs."nimsha2".ref = "flake-pinning";
  inputs."nimsha2".dir = "nimpkgs/n/nimsha2";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nauthy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nauthy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nauthy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}