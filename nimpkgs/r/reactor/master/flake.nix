{
  description = ''Asynchronous networking engine for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-reactor-master.flake = false;
  inputs.src-reactor-master.type = "github";
  inputs.src-reactor-master.owner = "zielmicha";
  inputs.src-reactor-master.repo = "reactor.nim";
  inputs.src-reactor-master.ref = "refs/heads/master";
  inputs.src-reactor-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."collections".type = "github";
  # inputs."collections".owner = "riinr";
  # inputs."collections".repo = "flake-nimble";
  # inputs."collections".ref = "flake-pinning";
  # inputs."collections".dir = "nimpkgs/c/collections";
  # inputs."collections".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."collections".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-reactor-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-reactor-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-reactor-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}