{
  description = ''Simple and lightweight OPDS ebook server'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-tsundoku-master.flake = false;
  inputs.src-tsundoku-master.type = "github";
  inputs.src-tsundoku-master.owner = "FedericoCeratto";
  inputs.src-tsundoku-master.repo = "tsundoku";
  inputs.src-tsundoku-master.ref = "refs/heads/master";
  
  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  outputs = { self, nixpkgs, flakeNimbleLib, src-tsundoku-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tsundoku-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tsundoku-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}